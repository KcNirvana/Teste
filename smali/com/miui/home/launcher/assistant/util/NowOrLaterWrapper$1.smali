.class Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper$1;
.super Ljava/lang/Object;
.source "NowOrLaterWrapper.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;->getLater(Lcom/miui/home/launcher/assistant/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/assistant/util/Consumer",
        "<TA;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;

.field final synthetic val$consumer:Lcom/miui/home/launcher/assistant/util/Consumer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;Lcom/miui/home/launcher/assistant/util/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper$1;->this$0:Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper$1;->val$consumer:Lcom/miui/home/launcher/assistant/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper$1;->val$consumer:Lcom/miui/home/launcher/assistant/util/Consumer;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper$1;->this$0:Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/assistant/util/Consumer;->consume(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
