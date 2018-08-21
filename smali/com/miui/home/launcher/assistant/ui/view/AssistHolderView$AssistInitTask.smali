.class Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;
.super Landroid/os/AsyncTask;
.source "AssistHolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistInitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Lcom/miui/home/launcher/assistant/AssistantApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/AssistantApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/ImageUtil;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;-><init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$902(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$AssistInitTask;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V

    return-void
.end method
