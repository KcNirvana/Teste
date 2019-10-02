.class public final synthetic Lcom/miui/video/feedback/activity/-$$Lambda$TyEQbleNSBZV5U9DCF2OHa2_0Gw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/feedback/activity/-$$Lambda$TyEQbleNSBZV5U9DCF2OHa2_0Gw;->f$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/feedback/activity/-$$Lambda$TyEQbleNSBZV5U9DCF2OHa2_0Gw;->f$0:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
