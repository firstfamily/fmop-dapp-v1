#ifndef MAINMODEL_H
#define MAINMODEL_H

#include <QObject>

class MainModel : public QObject
{
    Q_OBJECT
public:
    explicit MainModel(QObject *parent = 0);
    bool login(QString *error);
    QString name();
    void setName(const QString &name);
    QString password();
    void setPassword(const QString &password);
private:
    QString m_name;
    QString m_password;
};
#endif // MAINMODEL_H
