.class public final Lcom/google/ads/interactivemedia/v3/internal/fr;
.super Landroid/os/HandlerThread;
.source "IMASDK"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fr;->a:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void
.end method
