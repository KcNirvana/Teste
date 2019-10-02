.class Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$3;
.super Ljava/lang/Object;
.source "FakeGooglePlayActivity.java"

# interfaces
.implements Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->handle302WithWebView(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;Landroid/content/Context;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$3;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    iput-object p2, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$3;->val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetGooglePlayUrlFinished(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$3;->val$jumpControlInfo:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-virtual {v1}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleWithCallee(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$3;->this$0:Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->finish()V

    return-void
.end method
