#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QProgressBar>
#include <QStatusBar>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // By default
    ui->lineEdit->setText("http://www.google.com");
    ui->webView->load(QUrl(ui->lineEdit->text()));

    // Status bar
    ui->progressBar->hide();
    ui->statusBar->addPermanentWidget(ui->progressBar);
    this->setStatusBar(ui->statusBar);
    ui->statusBar->hide();
//    pb = new QProgressBar(statusBar());
//    pb->setTextVisible(false);
//    pb->hide();
//    statusBar()->addPermanentWidget(pb);
}

MainWindow::~MainWindow()
{
    delete ui;
}

/**
 * Events
 */
void MainWindow::on_lineEdit_returnPressed()
{
    QUrl url = guessUrlFromString(ui->lineEdit->text());
    ui->lineEdit->setText(url.toString());
    ui->webView->load(url);
}

void MainWindow::on_goButton_clicked()
{
    on_lineEdit_returnPressed();
}

void MainWindow::on_webView_titleChanged(QString title)
{
    this->setWindowTitle(title);
}

void MainWindow::on_webView_loadStarted()
{
    ui->progressBar->show();
}

void MainWindow::on_webView_loadProgress(int progress)
{
    ui->progressBar->setValue(progress);
}

void MainWindow::on_webView_loadFinished(bool ok)
{
    ui->progressBar->hide();
}

/**
 * Custom methods
 */

QUrl MainWindow::guessUrlFromString(const QString string)
{
    QString trimmedString = string.trimmed();

    // Check the most common case of a valid url with scheme and host first
    QUrl url = QUrl::fromEncoded(trimmedString.toUtf8(), QUrl::TolerantMode);
    if (url.isValid() && !url.scheme().isEmpty() && !url.host().isEmpty())
        return url;

    // If the string is missing the scheme or the scheme is not valid prepend a scheme
    QString scheme = url.scheme();
    if (scheme.isEmpty() || scheme.contains(QLatin1Char('.')) || scheme == QLatin1String("localhost")) {
        // Do not do anything for strings such as "foo", only "foo.com"
        int dotIndex = trimmedString.indexOf(QLatin1Char('.'));
        if (dotIndex != -1 || trimmedString.startsWith(QLatin1String("localhost"))) {
            const QString hostscheme = trimmedString.left(dotIndex).toLower();
            QByteArray scheme = (hostscheme == QLatin1String("ftp")) ? "ftp" : "http";
            trimmedString = QLatin1String(scheme) + QLatin1String("://") + trimmedString;
        }
        url = QUrl::fromEncoded(trimmedString.toUtf8(), QUrl::TolerantMode);
    }

    if (url.isValid())
        return url;

    return QUrl();
}
