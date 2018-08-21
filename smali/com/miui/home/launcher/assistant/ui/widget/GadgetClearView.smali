.class public Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;
.super Ljava/lang/Object;
.source "GadgetClearView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final GADGET_CLEAR_ID:Ljava/lang/String; = "131"

.field public static final GADGET_POWER_CLEAR_ID:Ljava/lang/String; = "132"

.field public static final MESSAGE_CLEANING_REFRESH:I = 0x7d1

.field public static final MESSAGE_CLEAN_FINISH_TOAST:I = 0x7d2

.field private static final TAG:Ljava/lang/String; = "GadgetClearView"


# instance fields
.field private isCleaning:Z

.field private mButtonId:Ljava/lang/String;

.field private mCleanOK:Ljava/lang/String;

.field private mCleanProgress:Ljava/lang/String;

.field private mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mItem:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private mIvBg:Landroid/widget/ImageView;

.field private mParentTv:Landroid/widget/TextView;

.field private mPosition:I

.field private mTotalMemory:I

.field private mUsedMemory:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/view/View;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->isCleaning:Z

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b027e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mCleanOK:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b027f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mCleanProgress:Ljava/lang/String;

    iput p4, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mPosition:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->bindClearView(Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->bindData()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->refreshLabel()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->getFreeMemory()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mTotalMemory:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->showTipToast(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->isCleaning:Z

    return p1
.end method

.method private bindData()V
    .locals 6

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mTotalMemory:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mTotalMemory:I

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->getFreeMemory()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mTotalMemory:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mUsedMemory:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mUsedMemory:I

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->refreshLabel()V

    return-void
.end method

.method private execClear()V
    .locals 3

    const-string/jumbo v1, "GadgetClearView"

    const-string/jumbo v2, "execClear"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui.taskmanager.Clear"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private execPowerClear()V
    .locals 11

    const-string/jumbo v8, "GadgetClearView"

    const-string/jumbo v9, "execPowerClear"

    invoke-static {v8, v9}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v8, "miui.process.ProcessConfig"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v8, "miui.process.ProcessManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v8, "kill"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v8, "GadgetClearView"

    const-string/jumbo v9, "Exception"

    invoke-static {v8, v9, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getFormatedMemory(JZ)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-wide/16 v2, 0x400

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    long-to-float v1, p1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float v0, v1, v2

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "%.0fG"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "%.1fG"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFreeMemory()I
    .locals 4

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private playBarAnim(I)V
    .locals 6

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/assistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;I)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_item_click_function_launch"

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "FunctionLaunchView"

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mPosition:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private refreshLabel()V
    .locals 4

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getMax()I

    move-result v2

    div-int v0, v1, v2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mParentTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private removeFilter(Landroid/widget/ImageView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_1
    return-void
.end method

.method private setFilter(Landroid/widget/ImageView;)V
    .locals 4

    const v3, -0x777778

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method private showTipToast(II)V
    .locals 9

    const/4 v8, 0x0

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mCleanProgress:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    int-to-long v4, p1

    invoke-direct {p0, v4, v5, v8}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->getFormatedMemory(JZ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x1

    int-to-long v6, p2

    invoke-direct {p0, v6, v7, v8}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->getFormatedMemory(JZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x7d2

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mCleanOK:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public bindClearView(Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/view/View;)V
    .locals 5

    const v2, 0x1b090284

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mIvBg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mIvBg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mContext:Landroid/content/Context;

    const v4, 0x1b02018c

    invoke-static {v3, v4}, Lcom/miui/home/launcher/assistant/util/Util;->getThemeStyleFromId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x1b090285

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mButtonId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "131"

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mButtonId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mIvBg:Landroid/widget/ImageView;

    const v3, 0x1b02018e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x1b090392

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x1b0903c9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mParentTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    new-instance v3, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->setOnProgressChangedListener(Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar$OnProgressChangedListener;)V

    return-void

    :cond_1
    const-string/jumbo v2, "132"

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mButtonId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mIvBg:Landroid/widget/ImageView;

    const v3, 0x1b02018f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public clearBarClick()V
    .locals 4

    const-string/jumbo v1, "GadgetClearView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick isCleaning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->isCleaning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->isCleaning:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->isCleaning:Z

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mClearProgressBar:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getProgress()I

    move-result v0

    const-string/jumbo v1, "GadgetClearView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick mButtonId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mButtonId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "131"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mButtonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->execClear()V

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->playBarAnim(I)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "132"

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mButtonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->execPowerClear()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mIvBg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->setFilter(Landroid/widget/ImageView;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->clearBarClick()V

    :pswitch_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->mIvBg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;->removeFilter(Landroid/widget/ImageView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
