.class final Lcom/miui/msa/internal/adjump/AdJumpTracker$2;
.super Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;
.source "AdJumpTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/adjump/AdJumpTracker;->trackJumpException(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

.field final synthetic val$jumpReportBean:Lcom/miui/msa/internal/adjump/AdJumpReportBean;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)V
    .locals 0

    iput-object p3, p0, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;->val$adInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    iput-object p5, p0, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;->val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    iput-object p6, p0, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;->val$jumpReportBean:Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    invoke-direct {p0, p1, p2}, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AdJumpTracker"

    const-string v1, "trackJumpException"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;->val$adInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    iget-object v3, p0, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;->val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    iget-object v4, p0, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;->val$jumpReportBean:Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->access$000(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/AdJumpReportBean;)Lcom/xiaomi/analytics/Action;

    move-result-object v1

    const-string v2, "e"

    const-string v3, "jump_fail"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object v1

    const-string v2, "error"

    iget-object v3, p0, Lcom/miui/msa/internal/adjump/AdJumpTracker$2;->val$jumpReportBean:Lcom/miui/msa/internal/adjump/AdJumpReportBean;

    invoke-virtual {v3}, Lcom/miui/msa/internal/adjump/AdJumpReportBean;->getErrorDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/analytics/Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/AdJumpTracker;->access$100(Landroid/content/Context;Lcom/xiaomi/analytics/Action;)V

    return-void
.end method
