.class public Lcom/xiaomi/accountsdk/request/InvalidResponseException;
.super Lcom/xiaomi/accountsdk/account/exception/AccountException;
.source "InvalidResponseException.java"


# static fields
.field private static final serialVersionUID:J = 0x4cf220b7dd22aef3L


# instance fields
.field public isHtmlOr302:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/exception/AccountException;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->isHtmlOr302:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/accountsdk/account/exception/AccountException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->isHtmlOr302:Z

    iput-boolean p3, p0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->isHtmlOr302:Z

    return-void
.end method
