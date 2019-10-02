.class public Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;
.super Lcom/xiaomi/accountsdk/account/exception/AccountException;
.source "NeedCaptchaException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mCaptchaUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/exception/AccountException;-><init>(ILjava/lang/String;)V

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->mCaptchaUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Need captcha code or wrong captcha code"

    const v1, 0x153d9

    invoke-direct {p0, v1, v0, p1}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCaptchaUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->mCaptchaUrl:Ljava/lang/String;

    return-object v0
.end method
