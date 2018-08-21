.class public Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;
.super Ljava/lang/Object;
.source "KeyBoardStatusObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;,
        Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;
    }
.end annotation


# static fields
.field private static final SOFT_KEY_BOARD_MIN_HEIGHT:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "KeyBoardStatusObserver"


# instance fields
.field private mKeyboardVisible:Z

.field private mListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;

.field private mVisibilityListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mKeyboardVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;)Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mVisibilityListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mKeyboardVisible:Z

    return v0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mKeyboardVisible:Z

    return p1
.end method


# virtual methods
.method public registerActivity(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->registerView(Landroid/view/View;)V

    return-void
.end method

.method public registerView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;-><init>(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setVisibilityListener(Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mVisibilityListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$KeyboardVisibilityListener;

    return-void
.end method

.method public unRegisterView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;->getView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver;->mListener:Lcom/miui/home/launcher/assistant/util/KeyBoardStatusObserver$OnGlobalLayoutListener;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "KeyBoardStatusObserver"

    const-string/jumbo v1, "unregister onglobalLayoutListener failed!"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
