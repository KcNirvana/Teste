.class Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;
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
    name = "LoadImageRunnable"
.end annotation


# instance fields
.field private mDrawableId:I

.field private mIsXpace:Z

.field private mIv:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/widget/PaListView;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/ImageView;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->mIv:Landroid/widget/ImageView;

    iput p3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->mDrawableId:I

    iput-boolean p4, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->mIsXpace:Z

    return-void
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->mIv:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->mDrawableId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/ImageUtil;->getThemeStyleFromId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->mIsXpace:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->mDrawableId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->mIsXpace:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;->this$0:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-virtual {v3, v1, v2}, Lcom/miui/personalassistant/ui/widget/PaListView;->addDrawableToLrucaches(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/miui/personalassistant/util/ThreadDispatcher;->getInstance()Lcom/miui/personalassistant/util/ThreadDispatcher;

    new-instance v3, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable$1;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v3}, Lcom/miui/personalassistant/util/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
