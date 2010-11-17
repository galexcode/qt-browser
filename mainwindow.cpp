#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->webView->load(QUrl("http://www.google.com"));
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_lineEdit_returnPressed()
{
    QString url = ui->lineEdit->text();

//    QRegExp rx(".*?([^.]+\\.[^.]+)");
//    if(rx.exactMatch(url))
//    {
//        if(url.contains('http://', Qt::CaseInsensitive) ) // Not case sensitive
//        {
//            // Append in case user forgets
//            url.prepend('http://');
//        }
//    }
//    else
//    {
//        url.prepend('http://www.google.com/search?q=');
//    }

    ui->webView->load(QUrl(url));
}

void MainWindow::on_goButton_clicked()
{
    on_lineEdit_returnPressed();
}
