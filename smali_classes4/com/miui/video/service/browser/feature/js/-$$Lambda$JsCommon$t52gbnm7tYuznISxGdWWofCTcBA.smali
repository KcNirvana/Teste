.class public final synthetic Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$t52gbnm7tYuznISxGdWWofCTcBA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/service/browser/feature/js/JsCommon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/service/browser/feature/js/JsCommon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$t52gbnm7tYuznISxGdWWofCTcBA;->f$0:Lcom/miui/video/service/browser/feature/js/JsCommon;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/js/-$$Lambda$JsCommon$t52gbnm7tYuznISxGdWWofCTcBA;->f$0:Lcom/miui/video/service/browser/feature/js/JsCommon;

    check-cast p1, Lcom/miui/video/service/share/data/ShareInfo;

    invoke-static {v0, p1}, Lcom/miui/video/service/browser/feature/js/JsCommon;->lambda$onClickToShare$14(Lcom/miui/video/service/browser/feature/js/JsCommon;Lcom/miui/video/service/share/data/ShareInfo;)V

    return-void
.end method
