.class final Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;
.super Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;
.source "AdJumpHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handlerTestUrlAction(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bean:Lcom/miui/msa/internal/adjump/AdInfoBean;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

.field final synthetic val$listener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;)V
    .locals 0

    iput-object p3, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;->val$bean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    iput-object p5, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;->val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    iput-object p6, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;->val$listener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;

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

    new-instance v0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;->val$bean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    iget-object v3, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;->val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    new-instance v4, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3$1;

    invoke-direct {v4, p0}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3$1;-><init>(Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;-><init>(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;)V

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;->val$listener:Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->setTrackParsedUrlListener(Lcom/miui/msa/internal/adjump/UrlWebViewParser$TrackParsedUrlListener;)V

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;->val$bean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    invoke-virtual {v1}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->parse(Ljava/lang/String;)V

    return-void
.end method
