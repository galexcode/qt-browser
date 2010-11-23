#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QProgressBar>
#include <QUrl>

namespace Ui {
    class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    static QUrl guessUrlFromString(const QString string);

private:
    Ui::MainWindow *ui;
    QProgressBar *pb;

public slots:
    void on_lineEdit_returnPressed();
    void on_goButton_clicked();

private slots:
    void on_webView_loadFinished(bool );
    void on_webView_loadProgress(int progress);
    void on_webView_titleChanged(QString title);
    void on_webView_loadStarted();
};


#endif // MAINWINDOW_H
