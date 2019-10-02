.class Lcom/google/ads/interactivemedia/v3/internal/bb$1;
.super Landroid/os/Handler;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/bb;-><init>(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/bb;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bb$1;->a:Lcom/google/ads/interactivemedia/v3/internal/bb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bb$1;->a:Lcom/google/ads/interactivemedia/v3/internal/bb;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bb;->a(Landroid/os/Message;)V

    return-void
.end method
