.class Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5$1;
.super Ljava/lang/Object;
.source "AdJumpHandlerUtils.java"

# interfaces
.implements Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5$1;->this$0:Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetGooglePlayUrlFinished(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5$1;->this$0:Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5;

    iget-object v0, v0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5$1;->this$0:Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5;

    iget-object v1, v1, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$5;->val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-static {v0, p1, v1}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->access$000(Landroid/content/Context;Ljava/lang/String;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    return-void
.end method
