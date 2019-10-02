.class Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$4;
.super Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;
.source "FakeGooglePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->startSafeGuard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$4;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-direct {p0, p2, p3}, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$4;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-virtual {v0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$4;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-static {v1}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->access$000(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;)Lcom/miui/msa/internal/adjump/AdInfoBean;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$4;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-static {v2}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->access$100(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;)Lcom/miui/msa/internal/adjump/JumpControlInfo;

    move-result-object v2

    invoke-static {}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->build()Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCount(I)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setJumpCost(J)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v3

    const-string v4, "timeOut"

    invoke-virtual {v3, v4}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->setErrorDescription(Ljava/lang/String;)Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackJumpTimeOut(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$4;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-virtual {v0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->finish()V

    return-void
.end method
