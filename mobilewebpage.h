#ifndef MOBILEWEBPAGE_H
#define MOBILEWEBPAGE_H

#include <QWebPage>


class MobileWebPage : public QWebPage
{
    Q_OBJECT

public:
    MobileWebPage(QObject *parent = 0);
    virtual ~MobileWebPage();

protected:
    QString userAgentForUrl(const QUrl &url) const;
};

#endif // MOBILEWEBPAGE_H
