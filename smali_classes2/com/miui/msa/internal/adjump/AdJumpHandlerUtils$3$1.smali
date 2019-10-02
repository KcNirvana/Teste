.class Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3$1;
.super Ljava/lang/Object;
.source "AdJumpHandlerUtils.java"

# interfaces
.implements Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3$1;->this$0:Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetGooglePlayUrlFinished(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdJumpHandlerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandlerTestUrlAction final url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
