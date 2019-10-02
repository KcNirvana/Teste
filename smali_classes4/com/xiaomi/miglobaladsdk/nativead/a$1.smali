.class Lcom/xiaomi/miglobaladsdk/nativead/a$1;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/nativead/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/nativead/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/a;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/a$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/a;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/a$1;->a:Lcom/xiaomi/miglobaladsdk/nativead/a;

    invoke-static {v1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->b(Lcom/xiaomi/miglobaladsdk/nativead/a;)Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/miglobaladsdk/nativead/a;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    return-void
.end method
