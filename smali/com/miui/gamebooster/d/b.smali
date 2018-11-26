.class public Lcom/miui/gamebooster/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static so:Ljava/util/ArrayList;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFloatImageView:Landroid/widget/ImageView;

.field private mFloatLayout:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIsHide:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mWindowManager:Landroid/view/WindowManager;

.field private sA:Landroid/widget/RelativeLayout;

.field private sB:Landroid/widget/ImageButton;

.field private sC:Landroid/widget/GridView;

.field private sD:Landroid/widget/RelativeLayout;

.field private sE:Landroid/view/View;

.field private sF:Z

.field private sG:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

.field private sH:Z

.field private sI:Landroid/database/ContentObserver;

.field private sp:Ljava/util/List;

.field private sq:Z

.field private sr:Lcom/miui/gamebooster/customview/TopLineMonitor;

.field private ss:Lcom/miui/gamebooster/customview/TopLineMonitor;

.field private st:Ljava/util/List;

.field private su:Landroid/widget/LinearLayout;

.field private sv:Lcom/miui/gamebooster/b/k;

.field private sw:Landroid/widget/RelativeLayout;

.field private sx:Landroid/widget/RelativeLayout;

.field private sy:Landroid/widget/ImageButton;

.field private sz:Lcom/miui/gamebooster/b/e;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/d/b;->so:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/gamebooster/d/b;->so:Ljava/util/ArrayList;

    const-string/jumbo v1, "gemini"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;Landroid/os/Handler;)V
    .locals 7

    const v6, 0x7f020143

    const v5, 0x7f020141

    const v4, 0x7f02012f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->st:Ljava/util/List;

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->st:Ljava/util/List;

    new-instance v1, Lcom/miui/gamebooster/model/a;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qS:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    const v3, 0x7f020145

    invoke-direct {v1, v2, v3}, Lcom/miui/gamebooster/model/a;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->st:Ljava/util/List;

    new-instance v1, Lcom/miui/gamebooster/model/a;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qQ:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    const v3, 0x7f02013c

    invoke-direct {v1, v2, v3}, Lcom/miui/gamebooster/model/a;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->st:Ljava/util/List;

    new-instance v1, Lcom/miui/gamebooster/model/a;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qT:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-direct {v1, v2, v5}, Lcom/miui/gamebooster/model/a;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->st:Ljava/util/List;

    new-instance v1, Lcom/miui/gamebooster/model/a;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qR:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-direct {v1, v2, v6}, Lcom/miui/gamebooster/model/a;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->st:Ljava/util/List;

    new-instance v1, Lcom/miui/gamebooster/model/a;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qP:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    const v3, 0x7f020120

    invoke-direct {v1, v2, v3}, Lcom/miui/gamebooster/model/a;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->st:Ljava/util/List;

    new-instance v1, Lcom/miui/gamebooster/model/a;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qO:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-direct {v1, v2, v4}, Lcom/miui/gamebooster/model/a;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sp:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sp:Ljava/util/List;

    new-instance v1, Lcom/miui/gamebooster/model/a;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qT:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-direct {v1, v2, v5}, Lcom/miui/gamebooster/model/a;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sp:Ljava/util/List;

    new-instance v1, Lcom/miui/gamebooster/model/a;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qR:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-direct {v1, v2, v6}, Lcom/miui/gamebooster/model/a;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sp:Ljava/util/List;

    new-instance v1, Lcom/miui/gamebooster/model/a;

    sget-object v2, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qO:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    invoke-direct {v1, v2, v4}, Lcom/miui/gamebooster/model/a;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/gamebooster/d/f;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/d/f;-><init>(Lcom/miui/gamebooster/d/b;)V

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/gamebooster/d/b;->sG:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/d/b;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/gamebooster/d/b;->initFloatView()V

    return-void
.end method

.method private hideOnBothSides()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mFloatImageView:Landroid/widget/ImageView;

    const v2, 0x7f020131

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit16 v3, v3, -0xa0

    if-le v2, v3, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mFloatImageView:Landroid/widget/ImageView;

    const v2, 0x7f020132

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mFloatImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mFloatImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/gamebooster/d/n;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/d/n;-><init>(Lcom/miui/gamebooster/d/b;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private initFloatView()V
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private uM(Landroid/view/LayoutInflater;II)V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->mFloatLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mFloatLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0180

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->mFloatImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/H;->is(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/miui/gamebooster/c/b;->uc()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcom/miui/gamebooster/d/b;->hideOnBothSides()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/d/b;->mIsHide:Z

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mFloatLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mFloatImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/gamebooster/a/H;->it(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, p2

    add-int/2addr v1, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private uO(Landroid/view/LayoutInflater;II)V
    .locals 6

    const/4 v4, 0x0

    const v3, 0x7f0a0180

    const/4 v5, 0x0

    const v1, 0x7f030075

    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/TopLineMonitor;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sr:Lcom/miui/gamebooster/customview/TopLineMonitor;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sr:Lcom/miui/gamebooster/customview/TopLineMonitor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/miui/gamebooster/customview/TopLineMonitor;->kk(Lcom/miui/gamebooster/d/b;Z)V

    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/TopLineMonitor;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->ss:Lcom/miui/gamebooster/customview/TopLineMonitor;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->ss:Lcom/miui/gamebooster/customview/TopLineMonitor;

    invoke-virtual {v0, p0, v5}, Lcom/miui/gamebooster/customview/TopLineMonitor;->kk(Lcom/miui/gamebooster/d/b;Z)V

    sget-object v0, Lcom/miui/gamebooster/d/b;->so:Ljava/util/ArrayList;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sr:Lcom/miui/gamebooster/customview/TopLineMonitor;

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/customview/TopLineMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->ss:Lcom/miui/gamebooster/customview/TopLineMonitor;

    invoke-virtual {v1, v3}, Lcom/miui/gamebooster/customview/TopLineMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090119

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/miui/gamebooster/a/w;->hz(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->sr:Lcom/miui/gamebooster/customview/TopLineMonitor;

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/H;->is(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/gamebooster/a/H;->it(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->ss:Lcom/miui/gamebooster/customview/TopLineMonitor;

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, p2

    add-int/2addr v1, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic uP(Lcom/miui/gamebooster/d/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic uQ(Lcom/miui/gamebooster/d/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mFloatImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic uR(Lcom/miui/gamebooster/d/b;)Lcom/miui/gamebooster/b/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sz:Lcom/miui/gamebooster/b/e;

    return-object v0
.end method

.method static synthetic uS(Lcom/miui/gamebooster/d/b;)Lcom/miui/gamebooster/service/GameBoxWindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sG:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    return-object v0
.end method


# virtual methods
.method public createFloatView()V
    .locals 5

    const/4 v0, 0x0

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->sG:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    iget-boolean v1, v1, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lQ:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/gamebooster/d/b;->sq:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eR()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x108

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v3

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gamebooster/a/H;->ir(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    :goto_0
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v0

    :cond_2
    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x700

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    :cond_3
    iget-object v3, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tT()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "float"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v2, v1, v0}, Lcom/miui/gamebooster/d/b;->uM(Landroid/view/LayoutInflater;II)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/d/b;->sq:Z

    return-void

    :cond_4
    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09014a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    :cond_5
    invoke-direct {p0, v2, v1, v0}, Lcom/miui/gamebooster/d/b;->uO(Landroid/view/LayoutInflater;II)V

    goto :goto_1
.end method

.method public removeFloatView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/d/b;->sq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tT()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mFloatLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/d/b;->sq:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FloatAssistantView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tT()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gesture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sr:Lcom/miui/gamebooster/customview/TopLineMonitor;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->sr:Lcom/miui/gamebooster/customview/TopLineMonitor;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->ss:Lcom/miui/gamebooster/customview/TopLineMonitor;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/d/b;->sq:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "FloatAssistantView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uG(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/d/b;->sH:Z

    return-void
.end method

.method public uH(ZZ)V
    .locals 11

    const/4 v6, -0x1

    const/4 v4, 0x7

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/miui/gamebooster/d/b;->sF:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/H;->is(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7d3

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x108

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x7f0b006f

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x31

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    if-eqz p2, :cond_1

    xor-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tT()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "gesture"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_9

    const v0, 0x7f0b0070

    :goto_2
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    if-eqz v3, :cond_a

    const v0, 0x7f0300aa

    :goto_3
    invoke-virtual {v5, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    const v5, 0x7f0a0201

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    const v5, 0x7f0a01fd

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sw:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    const v5, 0x7f0a01fe

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sD:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sD:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020138

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sw:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/miui/gamebooster/d/g;

    invoke-direct {v5, p0}, Lcom/miui/gamebooster/d/g;-><init>(Lcom/miui/gamebooster/d/b;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eK(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x3

    if-le v0, v6, :cond_c

    new-instance v0, Lcom/miui/gamebooster/model/d;

    sget-object v6, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qV:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    const v7, 0x7f0300ae

    invoke-direct {v0, v6, v10, v10, v7}, Lcom/miui/gamebooster/model/d;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;Landroid/content/pm/ResolveInfo;Lcom/miui/gamebooster/model/a;I)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sp:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/a;

    new-instance v7, Lcom/miui/gamebooster/model/d;

    sget-object v8, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qX:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    const v9, 0x7f0300b1

    invoke-direct {v7, v8, v10, v0, v9}, Lcom/miui/gamebooster/model/d;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;Landroid/content/pm/ResolveInfo;Lcom/miui/gamebooster/model/a;I)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :sswitch_0
    move v3, v1

    goto/16 :goto_0

    :sswitch_1
    if-eqz p2, :cond_5

    move p1, v1

    :cond_5
    move v3, v2

    goto/16 :goto_0

    :sswitch_2
    if-eqz p2, :cond_6

    move p1, v2

    :cond_6
    move v3, v2

    goto/16 :goto_0

    :cond_7
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x13

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x15

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_1

    :cond_9
    const v0, 0x7f0b0071

    goto/16 :goto_2

    :cond_a
    if-eqz p1, :cond_b

    const v0, 0x7f0300ab

    goto/16 :goto_3

    :cond_b
    const v0, 0x7f0300ac

    goto/16 :goto_3

    :cond_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v6, Lcom/miui/gamebooster/model/d;

    sget-object v7, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;->qW:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;

    if-eqz v3, :cond_d

    const v0, 0x7f0300af

    :goto_6
    invoke-direct {v6, v7, v10, v10, v0}, Lcom/miui/gamebooster/model/d;-><init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxListType;Landroid/content/pm/ResolveInfo;Lcom/miui/gamebooster/model/a;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    const v0, 0x7f0300b0

    goto :goto_6

    :cond_e
    new-instance v0, Lcom/miui/gamebooster/b/e;

    iget-object v6, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v5, v3}, Lcom/miui/gamebooster/b/e;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sz:Lcom/miui/gamebooster/b/e;

    if-eqz v3, :cond_12

    iget-object v6, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_11

    move v0, v4

    :goto_7
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    :goto_8
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/miui/gamebooster/d/b;->sz:Lcom/miui/gamebooster/b/e;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sD:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_13

    :goto_9
    iget-object v6, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09016d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    mul-int/2addr v4, v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_f

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f09016b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :cond_f
    sub-int/2addr v4, v2

    if-eqz v3, :cond_14

    move v2, v4

    :goto_a
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eqz v3, :cond_10

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    :cond_10
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->sD:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lcom/miui/gamebooster/d/b;->sF:Z

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    new-instance v2, Lcom/miui/gamebooster/d/h;

    invoke-direct {v2, p0}, Lcom/miui/gamebooster/d/h;-><init>(Lcom/miui/gamebooster/d/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/miui/gamebooster/d/i;

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/miui/gamebooster/d/i;-><init>(Lcom/miui/gamebooster/d/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sI:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "gamebox_stick"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/d/b;->sI:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_7

    :cond_12
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto/16 :goto_8

    :cond_13
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_9

    :cond_14
    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090155

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_a

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public uI()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/d/b;->uK()V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sG:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    iget-boolean v0, v0, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->lQ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/d/b;->createFloatView()V

    :cond_0
    return-void
.end method

.method public uJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/d/b;->sH:Z

    return v0
.end method

.method public uK()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gamebooster/d/b;->sF:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sI:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->sI:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/miui/gamebooster/d/b;->sI:Landroid/database/ContentObserver;

    :cond_0
    const-string/jumbo v0, "FloatAssistantView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove float view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/d/b;->sF:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FloatAssistantView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uL(ZZ)V
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/d/b;->uH(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/d/b;->uN(Z)V

    goto :goto_0
.end method

.method public uN(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/miui/gamebooster/d/b;->sF:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f0b006f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    invoke-static {}, Lcom/miui/gamebooster/c/b;->tT()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gesture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_3

    const v0, 0x7f0b0070

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    const v1, 0x7f0a0201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    const v1, 0x7f0a01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sw:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    const v1, 0x7f0a01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->su:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sx:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sA:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    const v1, 0x7f0a0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sy:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    const v1, 0x7f0a0203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sB:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->su:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/gamebooster/a/H;->is(Landroid/content/Context;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sA:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sB:Landroid/widget/ImageButton;

    new-instance v1, Lcom/miui/gamebooster/d/j;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/d/j;-><init>(Lcom/miui/gamebooster/d/b;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sw:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/miui/gamebooster/d/l;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/d/l;-><init>(Lcom/miui/gamebooster/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/gamebooster/b/k;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->st:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/miui/gamebooster/b/k;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/gamebooster/d/b;->sv:Lcom/miui/gamebooster/b/k;

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->st:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->sv:Lcom/miui/gamebooster/b/k;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->st:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_3
    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/d/b;->sF:Z

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->sE:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/d/b;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    new-instance v1, Lcom/miui/gamebooster/d/m;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/d/m;-><init>(Lcom/miui/gamebooster/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_3
    const v0, 0x7f0b0071

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sx:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sy:Landroid/widget/ImageButton;

    new-instance v1, Lcom/miui/gamebooster/d/k;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/d/k;-><init>(Lcom/miui/gamebooster/d/b;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/d/b;->sC:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/miui/gamebooster/d/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_3
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
