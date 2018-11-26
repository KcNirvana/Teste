.class public Lcom/miui/powercenter/PowerCenter;
.super Lcom/miui/common/a/d;
.source ""


# static fields
.field protected static aOT:Z

.field private static final synthetic aPc:[I

.field private static final synthetic aPd:[I

.field private static final synthetic aPe:[I


# instance fields
.field private aON:Lcom/miui/powercenter/c;

.field private aOO:Ljava/util/List;

.field private aOP:Z

.field private aOQ:Landroid/content/Context;

.field private aOR:Lcom/miui/powercenter/quickoptimize/e;

.field private aOS:Z

.field private aOU:I

.field private aOV:Lcom/miui/powercenter/mainui/MainActivityView;

.field private aOW:Lcom/miui/powercenter/b;

.field private aOX:Ljava/util/List;

.field private aOY:Landroid/content/BroadcastReceiver;

.field private aOZ:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

.field private aPa:Ljava/util/List;

.field private aPb:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/powercenter/PowerCenter;->aOT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aPb:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPi:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOZ:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aPa:Ljava/util/List;

    iput-boolean v1, p0, Lcom/miui/powercenter/PowerCenter;->aOP:Z

    iput-boolean v1, p0, Lcom/miui/powercenter/PowerCenter;->aOS:Z

    iput v1, p0, Lcom/miui/powercenter/PowerCenter;->aOU:I

    new-instance v0, Lcom/miui/powercenter/c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/c;-><init>(Lcom/miui/powercenter/PowerCenter;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aON:Lcom/miui/powercenter/c;

    new-instance v0, Lcom/miui/powercenter/i;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/i;-><init>(Lcom/miui/powercenter/PowerCenter;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOY:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOX:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOO:Ljava/util/List;

    return-void
.end method

.method private bfE()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    iget-object v2, p0, Lcom/miui/powercenter/PowerCenter;->aOR:Lcom/miui/powercenter/quickoptimize/e;

    invoke-virtual {v2}, Lcom/miui/powercenter/quickoptimize/e;->getSectionCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->bcq(IZ)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aON:Lcom/miui/powercenter/c;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x401

    const/16 v3, 0x320

    invoke-virtual {v0, v2, v1, v3}, Lcom/miui/powercenter/c;->aLh(ILjava/lang/Object;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfF()I

    move-result v0

    goto :goto_0
.end method

.method private bfF()I
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/j;->aOP()I

    move-result v0

    return v0
.end method

.method private bfG()V
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOW:Lcom/miui/powercenter/b;

    invoke-virtual {v0, p0, v1}, Lcom/miui/powercenter/quickoptimize/j;->aPb(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/k;)V

    return-void
.end method

.method private bfH()V
    .locals 2

    invoke-static {}, Lcom/miui/powercenter/PowerCenter;->bgs()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOZ:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    invoke-virtual {v1}, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPk:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOZ:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/PowerCenter;->aOP:Z

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfG()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfU()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private bfI()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/PowerCenter;->aOS:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/miui/common/a/d;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfT()V

    goto :goto_0
.end method

.method private bfJ(Lcom/miui/powercenter/quickoptimize/l;)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/powercenter/PowerCenter;->bgu()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPp()Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aPa:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIE:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070509

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIE:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07050a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIE:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07050b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIE:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07050c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIE:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07050d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIB:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07050e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIB:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07050f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIC:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070510

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIC:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070511

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aID:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    const v3, 0x7f070512

    invoke-virtual {p0, v3}, Lcom/miui/powercenter/PowerCenter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/miui/powercenter/model/d;

    sget-object v2, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIC:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    const v3, 0x7f070514

    invoke-virtual {p0, v3}, Lcom/miui/powercenter/PowerCenter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/powercenter/quickoptimize/l;->aPq()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/miui/powercenter/model/d;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method private bfK()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/powercenter/PowerCenter;->aOS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/PowerCenter;->aOS:Z

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOR:Lcom/miui/powercenter/quickoptimize/e;

    iget-object v2, p0, Lcom/miui/powercenter/PowerCenter;->aPb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->bcA(Lcom/miui/powercenter/quickoptimize/e;Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfE()V

    return-void
.end method

.method private bfL(Lcom/miui/powercenter/model/b;)V
    .locals 3

    invoke-static {}, Lcom/miui/powercenter/PowerCenter;->bgt()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/powercenter/model/b;->aUg()Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/j;->aOX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    sget-object v1, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJS:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    sget-object v1, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJS:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJY:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/j;->aPa()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    sget-object v1, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJV:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJY:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    :goto_1
    :pswitch_3
    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/j;->aOY()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    sget-object v1, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJU:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJY:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    sget-object v1, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJV:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    sget-object v1, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJU:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    sget-object v2, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private bfM(Lcom/miui/powercenter/model/AbsModel$ItemGroup;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/powercenter/model/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/miui/powercenter/model/c;-><init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aPa:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private bfO()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/powercenter/PowerCenter;->aOS:Z

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->bcC()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->bcE(Z)V

    new-instance v0, Lcom/miui/powercenter/j;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/j;-><init>(Lcom/miui/powercenter/PowerCenter;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private bfP()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOQ:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/a;->aOn(Landroid/content/Context;)V

    return-void
.end method

.method private bfQ()V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOX:Ljava/util/List;

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/j;->aOQ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOO:Ljava/util/List;

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/j;->aON()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/miui/powercenter/quickoptimize/i;

    invoke-direct {v0}, Lcom/miui/powercenter/quickoptimize/i;-><init>()V

    new-instance v2, Lcom/miui/powercenter/quickoptimize/v;

    invoke-direct {v2}, Lcom/miui/powercenter/quickoptimize/v;-><init>()V

    invoke-virtual {v0, v2}, Lcom/miui/powercenter/quickoptimize/i;->aOE(Lcom/miui/powercenter/quickoptimize/v;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Lcom/miui/powercenter/quickoptimize/i;

    invoke-direct {v2}, Lcom/miui/powercenter/quickoptimize/i;-><init>()V

    const v0, 0x7f070479

    invoke-virtual {v2, v0}, Lcom/miui/powercenter/quickoptimize/i;->aOG(I)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOX:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/v;

    invoke-virtual {v2, v0}, Lcom/miui/powercenter/quickoptimize/i;->aOE(Lcom/miui/powercenter/quickoptimize/v;)V

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/v;->aQG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdK(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v2, Lcom/miui/powercenter/quickoptimize/i;

    invoke-direct {v2}, Lcom/miui/powercenter/quickoptimize/i;-><init>()V

    const v0, 0x7f07047a

    invoke-virtual {v2, v0}, Lcom/miui/powercenter/quickoptimize/i;->aOG(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/miui/powercenter/quickoptimize/i;->setFixed(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOO:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/v;

    invoke-virtual {v2, v0}, Lcom/miui/powercenter/quickoptimize/i;->aOE(Lcom/miui/powercenter/quickoptimize/v;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOR:Lcom/miui/powercenter/quickoptimize/e;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/quickoptimize/e;->updateData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOR:Lcom/miui/powercenter/quickoptimize/e;

    invoke-virtual {v0}, Lcom/miui/powercenter/quickoptimize/e;->notifyDataSetChanged()V

    return-void
.end method

.method private bfR(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/mainui/MainActivityView;->bcu(F)V

    return-void
.end method

.method private bfS(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/mainui/MainActivityView;->bcy(F)V

    return-void
.end method

.method private bfT()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07051c

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070618

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/l;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/l;-><init>(Lcom/miui/powercenter/PowerCenter;)V

    const v2, 0x7f0705d4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private bfU()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07051c

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070618

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/k;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/k;-><init>(Lcom/miui/powercenter/PowerCenter;)V

    const v2, 0x7f0705d4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private bfW()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/powercenter/PowerSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerCenter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic bfX(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aON:Lcom/miui/powercenter/c;

    return-object v0
.end method

.method static synthetic bfY(Lcom/miui/powercenter/PowerCenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/PowerCenter;->aOP:Z

    return v0
.end method

.method static synthetic bfZ(Lcom/miui/powercenter/PowerCenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/PowerCenter;->aOS:Z

    return v0
.end method

.method static synthetic bga(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/mainui/MainActivityView;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    return-object v0
.end method

.method static synthetic bgb(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOW:Lcom/miui/powercenter/b;

    return-object v0
.end method

.method static synthetic bgc(Lcom/miui/powercenter/PowerCenter;)Lcom/miui/powercenter/PowerCenter$PowerScanStatus;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOZ:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    return-object v0
.end method

.method static synthetic bgd(Lcom/miui/powercenter/PowerCenter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aPa:Ljava/util/List;

    return-object v0
.end method

.method static synthetic bge(Lcom/miui/powercenter/PowerCenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/PowerCenter;->aOP:Z

    return p1
.end method

.method static synthetic bgf(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/PowerCenter$PowerScanStatus;)Lcom/miui/powercenter/PowerCenter$PowerScanStatus;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/PowerCenter;->aOZ:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    return-object p1
.end method

.method static synthetic bgg(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfH()V

    return-void
.end method

.method static synthetic bgh(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfI()V

    return-void
.end method

.method static synthetic bgi(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/quickoptimize/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerCenter;->bfJ(Lcom/miui/powercenter/quickoptimize/l;)V

    return-void
.end method

.method static synthetic bgj(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfK()V

    return-void
.end method

.method static synthetic bgk(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/model/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerCenter;->bfL(Lcom/miui/powercenter/model/b;)V

    return-void
.end method

.method static synthetic bgl(Lcom/miui/powercenter/PowerCenter;Lcom/miui/powercenter/model/AbsModel$ItemGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerCenter;->bfM(Lcom/miui/powercenter/model/AbsModel$ItemGroup;)V

    return-void
.end method

.method static synthetic bgm(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfO()V

    return-void
.end method

.method static synthetic bgn(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfP()V

    return-void
.end method

.method static synthetic bgo(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfQ()V

    return-void
.end method

.method static synthetic bgp(Lcom/miui/powercenter/PowerCenter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerCenter;->bfR(F)V

    return-void
.end method

.method static synthetic bgq(Lcom/miui/powercenter/PowerCenter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/PowerCenter;->bfS(F)V

    return-void
.end method

.method static synthetic bgr(Lcom/miui/powercenter/PowerCenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfW()V

    return-void
.end method

.method private static synthetic bgs()[I
    .locals 3

    sget-object v0, Lcom/miui/powercenter/PowerCenter;->aPc:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/powercenter/PowerCenter;->aPc:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->values()[Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPg:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    invoke-virtual {v1}, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPh:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    invoke-virtual {v1}, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPi:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    invoke-virtual {v1}, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPj:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    invoke-virtual {v1}, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->aPk:Lcom/miui/powercenter/PowerCenter$PowerScanStatus;

    invoke-virtual {v1}, Lcom/miui/powercenter/PowerCenter$PowerScanStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/powercenter/PowerCenter;->aPc:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic bgt()[I
    .locals 3

    sget-object v0, Lcom/miui/powercenter/PowerCenter;->aPd:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/powercenter/PowerCenter;->aPd:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->values()[Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIB:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIC:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aID:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIE:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/miui/powercenter/PowerCenter;->aPd:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic bgu()[I
    .locals 3

    sget-object v0, Lcom/miui/powercenter/PowerCenter;->aPe:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/powercenter/PowerCenter;->aPe:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->values()[Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIG:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIH:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aII:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIJ:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIK:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIL:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIM:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIN:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIO:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIP:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIQ:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    invoke-virtual {v1}, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/miui/powercenter/PowerCenter;->aPe:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public bfN(Lcom/miui/powercenter/model/b;)V
    .locals 4

    const/16 v0, 0x64

    invoke-static {}, Lcom/miui/powercenter/PowerCenter;->bgt()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/powercenter/model/b;->aUg()Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/miui/powercenter/PowerCenter;->aOU:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/powercenter/PowerCenter;->aOU:I

    invoke-virtual {p1}, Lcom/miui/powercenter/model/b;->aUi()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/mainui/MainActivityView;->bcE(Z)V

    :cond_1
    iget v1, p0, Lcom/miui/powercenter/PowerCenter;->aOU:I

    mul-int/lit8 v1, v1, 0x64

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->aOU()I

    move-result v2

    div-int/2addr v1, v2

    if-le v1, v0, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/mainui/MainActivityView;->bcv(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070742

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/PowerCenter;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/powercenter/model/b;->aUh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->bcw(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/miui/powercenter/model/b;->aUi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    sget-object v2, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJT:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    sget-object v3, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/mainui/MainActivityView;->bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/miui/powercenter/model/b;->aUi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    sget-object v2, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJS:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    sget-object v3, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/mainui/MainActivityView;->bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/powercenter/model/b;->aUi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    sget-object v2, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJV:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    sget-object v3, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/mainui/MainActivityView;->bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/miui/powercenter/model/b;->aUi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    sget-object v2, Lcom/miui/powercenter/view/MainHandleBar$HandleItem;->aJU:Lcom/miui/powercenter/view/MainHandleBar$HandleItem;

    sget-object v3, Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;->aJX:Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/mainui/MainActivityView;->bcG(Lcom/miui/powercenter/view/MainHandleBar$HandleItem;Lcom/miui/powercenter/view/MainHandleBar$HandleBarState;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public bfV()V
    .locals 1

    sget-boolean v0, Lcom/miui/powercenter/PowerCenter;->aOT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/powercenter/PowerCenter;->aOT:Z

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->bcs()Z

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfI()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/a/b;->Ia(Landroid/view/Window;)V

    const v0, 0x7f03010a

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerCenter;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/PowerCenter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOQ:Landroid/content/Context;

    new-instance v0, Lcom/miui/powercenter/b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/b;-><init>(Lcom/miui/powercenter/PowerCenter;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOW:Lcom/miui/powercenter/b;

    const v0, 0x7f0a0306

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/PowerCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/mainui/MainActivityView;

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aON:Lcom/miui/powercenter/c;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->bcx(Lcom/miui/common/d/f;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    const v1, 0x7f070485

    invoke-virtual {p0, v1}, Lcom/miui/powercenter/PowerCenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->bcB(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    const v1, 0x7f070615

    invoke-virtual {p0, v1}, Lcom/miui/powercenter/PowerCenter;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/mainui/MainActivityView;->bcw(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/powercenter/PowerCenter;->bfH()V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOY:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.miui.powercenter.action.LOAD_OPTIMIZE_TASK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Lcom/miui/powercenter/quickoptimize/e;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/quickoptimize/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOR:Lcom/miui/powercenter/quickoptimize/e;

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOR:Lcom/miui/powercenter/quickoptimize/e;

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aON:Lcom/miui/powercenter/c;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/quickoptimize/e;->aOA(Lcom/miui/common/d/f;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/miui/common/datamodel/A;->aKu([Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aON:Lcom/miui/powercenter/c;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x426

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/powercenter/c;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const v2, 0x7f0a033a

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerCenter;->aOY:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/PowerCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/miui/powercenter/PowerCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/mainui/BatteryStatusView;

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/BatteryStatusView;->bcJ()V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->bcD()V

    iget-object v0, p0, Lcom/miui/powercenter/PowerCenter;->aOV:Lcom/miui/powercenter/mainui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/powercenter/mainui/MainActivityView;->bcp()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    invoke-static {p0}, Lcom/miui/powercenter/a/c;->baZ(Landroid/content/Context;)V

    return-void
.end method
