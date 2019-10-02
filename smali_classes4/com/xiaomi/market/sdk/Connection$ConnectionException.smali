.class public Lcom/xiaomi/market/sdk/Connection$ConnectionException;
.super Ljava/lang/Exception;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/sdk/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectionException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mError:Lcom/xiaomi/market/sdk/Connection$NetworkError;

.field final synthetic this$0:Lcom/xiaomi/market/sdk/Connection;


# direct methods
.method public constructor <init>(Lcom/xiaomi/market/sdk/Connection;Lcom/xiaomi/market/sdk/Connection$NetworkError;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/market/sdk/Connection$ConnectionException;->this$0:Lcom/xiaomi/market/sdk/Connection;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/market/sdk/Connection$ConnectionException;->mError:Lcom/xiaomi/market/sdk/Connection$NetworkError;

    return-void
.end method
