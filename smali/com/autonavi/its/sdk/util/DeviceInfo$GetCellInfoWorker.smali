.class Lcom/autonavi/its/sdk/util/DeviceInfo$GetCellInfoWorker;
.super Ljava/lang/Thread;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/sdk/util/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetCellInfoWorker"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/autonavi/its/sdk/util/DeviceInfo$GetCellInfoWorker;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/its/sdk/util/DeviceInfo$GetCellInfoWorker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/its/sdk/util/DeviceInfo;->getInstance(Landroid/content/Context;)Lcom/autonavi/its/sdk/util/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/its/sdk/util/DeviceInfo;->getCellInfo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
