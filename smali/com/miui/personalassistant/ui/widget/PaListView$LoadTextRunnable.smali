.class Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;
.super Ljava/lang/Object;
.source "PaListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/widget/PaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTextRunnable"
.end annotation


# instance fields
.field private mNameKey:Ljava/lang/String;

.field private mTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/PaListView;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->mTv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->mNameKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->mNameKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->mTv:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->mNameKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;->mNameKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/personalassistant/ui/widget/PaListView;->addStringToLrucaches(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/personalassistant/util/ThreadDispatcher;->getInstance()Lcom/miui/personalassistant/util/ThreadDispatcher;

    new-instance v1, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable$1;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/personalassistant/util/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
