.class public Lcom/xiaomi/market/sdk/Connection$FileResetableOutputStream;
.super Lcom/xiaomi/market/sdk/Connection$ResetableOutputStream;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/sdk/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FileResetableOutputStream"
.end annotation


# instance fields
.field private mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/xiaomi/market/sdk/Connection;


# direct methods
.method public constructor <init>(Lcom/xiaomi/market/sdk/Connection;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/market/sdk/Connection$FileResetableOutputStream;->this$0:Lcom/xiaomi/market/sdk/Connection;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/market/sdk/Connection$ResetableOutputStream;-><init>(Lcom/xiaomi/market/sdk/Connection;Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/xiaomi/market/sdk/Connection$FileResetableOutputStream;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/market/sdk/Connection$FileResetableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/xiaomi/market/sdk/Connection$FileResetableOutputStream;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/xiaomi/market/sdk/Connection$FileResetableOutputStream;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/xiaomi/market/sdk/Connection$FileResetableOutputStream;->mOutputStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
