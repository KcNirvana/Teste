.class public Lcom/hungama/movies/sdk/Utils/PlayUtils;
.super Lcom/hungama/movies/sdk/Utils/DownloadUtils;
.source "PlayUtils.java"


# static fields
.field public static final ANY_AVAILABLE:I = 0x1

.field public static final THREE_G_ONLY:I = 0x3

.field public static final WIFI_ONLY:I = 0x2

.field public static encryption_type:Ljava/lang/String; = "AES/CBC/PKCS7Padding"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hungama/movies/sdk/Utils/DownloadUtils;-><init>()V

    return-void
.end method

.method public static SetUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Version : "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hungama/movies/sdk/Utils/PlayUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hungama/movies/sdk/Utils/PlayUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/hungama/movies/sdk/b/a;->a(Landroid/content/Context;)Lcom/hungama/movies/sdk/b/a;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/hungama/movies/sdk/b/a;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hungama/movies/sdk/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/hungama/movies/sdk/R$string;->login_type:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/hungama/movies/sdk/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.8.9"

    return-object v0
.end method
