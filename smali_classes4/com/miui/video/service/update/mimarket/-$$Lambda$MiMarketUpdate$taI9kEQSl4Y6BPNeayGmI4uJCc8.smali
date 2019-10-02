.class public final synthetic Lcom/miui/video/service/update/mimarket/-$$Lambda$MiMarketUpdate$taI9kEQSl4Y6BPNeayGmI4uJCc8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaomi/market/sdk/XiaomiUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/service/update/mimarket/MiMarketUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/service/update/mimarket/MiMarketUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/update/mimarket/-$$Lambda$MiMarketUpdate$taI9kEQSl4Y6BPNeayGmI4uJCc8;->f$0:Lcom/miui/video/service/update/mimarket/MiMarketUpdate;

    return-void
.end method


# virtual methods
.method public final onUpdateReturned(ILcom/xiaomi/market/sdk/UpdateResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/update/mimarket/-$$Lambda$MiMarketUpdate$taI9kEQSl4Y6BPNeayGmI4uJCc8;->f$0:Lcom/miui/video/service/update/mimarket/MiMarketUpdate;

    invoke-static {v0, p1, p2}, Lcom/miui/video/service/update/mimarket/MiMarketUpdate;->lambda$initXiaomiUpdateAgent$21(Lcom/miui/video/service/update/mimarket/MiMarketUpdate;ILcom/xiaomi/market/sdk/UpdateResponse;)V

    return-void
.end method
