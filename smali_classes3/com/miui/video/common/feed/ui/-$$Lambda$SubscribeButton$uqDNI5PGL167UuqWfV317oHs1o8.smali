.class public final synthetic Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$uqDNI5PGL167UuqWfV317oHs1o8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/common/feed/ui/SubscribeButton;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/common/feed/ui/SubscribeButton;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$uqDNI5PGL167UuqWfV317oHs1o8;->f$0:Lcom/miui/video/common/feed/ui/SubscribeButton;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$uqDNI5PGL167UuqWfV317oHs1o8;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$uqDNI5PGL167UuqWfV317oHs1o8;->f$0:Lcom/miui/video/common/feed/ui/SubscribeButton;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/-$$Lambda$SubscribeButton$uqDNI5PGL167UuqWfV317oHs1o8;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/miui/video/common/feed/ui/SubscribeButton;->lambda$showCancelDialog$1(Lcom/miui/video/common/feed/ui/SubscribeButton;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
