.class final Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;
.super Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;
.source "AdJumpHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->jumpMiMarket302WithHttpUrlConnection(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V
    .locals 0

    iput-object p3, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;->val$adInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    iput-object p5, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;->val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-direct {p0, p1, p2}, Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 4

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;->val$adInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;->val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-static {v0, v1, v2}, Lcom/miui/msa/internal/adjump/UrlHttpUrlConnectionParser;->getRedirectUrl(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdJumpHandlerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/msa/internal/adjump/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$6;->val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-static {v1, v0, v2}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->access$000(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    :cond_0
    return-void
.end method
