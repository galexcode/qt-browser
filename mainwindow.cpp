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
    //url =
    if(url.contains('http://', Qt::CaseInsensitive) ) // Not case sensitive
    {
        // Append in case user forgets
        url.prepend('http://');
    }
    ui->webView->load(QUrl(url));
}
