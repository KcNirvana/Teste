.class public Lcom/miui/securityscan/MainActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static Ln:J

.field public static Lo:Ljava/util/ArrayList;

.field private static final synthetic Ng:[I


# instance fields
.field private LA:Landroid/widget/Button;

.field private LB:Lcom/miui/securityscan/ui/main/BallView;

.field private LC:I

.field private LD:Ljava/lang/Object;

.field private LE:Ljava/lang/Object;

.field public LF:Z

.field public LG:Lcom/miui/securityscan/ui/main/CircleView;

.field private LH:I

.field public LI:Z

.field public LJ:Z

.field private LK:I

.field private LL:Landroid/widget/RelativeLayout;

.field public LM:Lcom/miui/securityscan/cards/DataModel;

.field public LN:I

.field private LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

.field private LP:Z

.field public LQ:Lcom/miui/securityscan/scanner/w;

.field private LR:Lmiui/app/AlertDialog;

.field private LS:J

.field private LT:Z

.field private LU:Z

.field private LV:Lcom/miui/securityscan/c/d;

.field private LW:Landroid/os/MessageQueue$IdleHandler;

.field private LX:Lcom/miui/securityscan/b;

.field public LY:Z

.field private LZ:Z

.field private Lp:Z

.field private Lq:Z

.field private Lr:Lcom/miui/securityscan/scanner/v;

.field public Ls:Landroid/widget/Button;

.field private Lt:Lcom/miui/securityscan/scanner/h;

.field private Lu:Lcom/miui/common/customview/gif/GifImageView;

.field public Lv:Z

.field private Lw:Lcom/miui/securityscan/cards/e;

.field public Lx:Z

.field private Ly:Z

.field private Lz:Lcom/miui/common/customview/AutoPasteListView;

.field public MA:Z

.field public MB:Z

.field public MC:Z

.field private MD:J

.field private ME:Ljava/util/ArrayList;

.field private MF:Ljava/lang/Object;

.field private MG:Lcom/miui/common/customview/OverScrollLayout;

.field private MH:Landroid/widget/LinearLayout;

.field private MI:Z

.field public MJ:Lcom/miui/common/card/CardViewAdapter;

.field private MK:Lcom/miui/common/customview/AutoPasteListView;

.field private ML:Landroid/view/View;

.field private MM:Lmiui/app/AlertDialog;

.field private MN:Landroid/widget/RelativeLayout;

.field private MO:Z

.field private MP:Lcom/miui/securityscan/scanner/t;

.field private MQ:Z

.field private MR:Landroid/view/ViewStub;

.field public MS:Ljava/util/List;

.field public MT:Lcom/miui/securityscan/scanner/B;

.field public MU:Lcom/miui/common/customview/ScoreTextView;

.field private MV:I

.field private MW:Landroid/widget/TextView;

.field private MX:Lcom/miui/securityscan/scanner/j;

.field private MY:Landroid/widget/Button;

.field private MZ:Lcom/miui/securityscan/a/a;

.field private Ma:Z

.field private Mb:Z

.field private Mc:I

.field private Md:Landroid/widget/LinearLayout;

.field private Me:Lcom/miui/securityscan/e/b;

.field private Mf:Lcom/miui/securityscan/e/a;

.field private Mg:Lcom/miui/securityscan/e/d;

.field public Mh:Lcom/miui/common/card/CardViewAdapter;

.field private Mi:Landroid/view/ViewStub;

.field private Mj:Landroid/widget/RelativeLayout;

.field private Mk:Lcom/miui/securityscan/scanner/d;

.field public Ml:Ljava/util/ArrayList;

.field private Mm:J

.field private Mn:J

.field private Mo:J

.field private Mp:I

.field private Mq:Z

.field private Mr:Z

.field private Ms:Lcom/miui/securityscan/c/g;

.field private Mt:J

.field public Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

.field private Mv:Landroid/view/ViewStub;

.field private Mw:Lcom/miui/securityscan/c/c;

.field private Mx:Lcom/miui/securityscan/scanner/x;

.field private My:Lcom/miui/securityscan/scanner/g;

.field private Mz:Lcom/miui/securityscan/c/h;

.field private Na:J

.field public Nb:Landroid/widget/TextView;

.field private Nc:Landroid/widget/TextView;

.field private Nd:Z

.field public Ne:Lcom/miui/securityscan/c/b;

.field private Nf:Z

.field private mAlertDialog:Lmiui/app/AlertDialog;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/miui/securityscan/MainActivity;->Ln:J

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    sget-object v0, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Do:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    new-instance v0, Lcom/miui/securityscan/scanner/w;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/w;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v0, Lcom/miui/securityscan/scanner/h;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/h;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lt:Lcom/miui/securityscan/scanner/h;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MF:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LD:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LE:Ljava/lang/Object;

    new-instance v0, Lcom/miui/securityscan/e;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/e;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LW:Landroid/os/MessageQueue$IdleHandler;

    return-void
.end method

.method private MA()V
    .locals 10

    const/16 v6, 0x8

    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-wide/16 v2, 0x12c

    const-string/jumbo v0, "com.miui.securityscan.MainActivity"

    const-string/jumbo v1, "backToNormalState() outside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/securityscan/MainActivity;->LS:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "com.miui.securityscan.MainActivity"

    const-string/jumbo v1, "backToNormalState() inside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Do:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LA:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LA:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    iget-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mm:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/securityscan/MainActivity;->Mm:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Km(J)V

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->getScore()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Kn(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mo:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mn:J

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MW:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/CircleView;->Gv()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MN:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v6, v0, v1, v4, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->ML:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/securityscan/MainActivity;->MG:Lcom/miui/common/customview/OverScrollLayout;

    invoke-static {v0, v1, v4, v9}, Lcom/miui/securityscan/utils/h;->IS(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MN:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/miui/securityscan/utils/h;->IO(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {v0, v2, v3, v6}, Lcom/miui/securityscan/utils/h;->IT(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LL:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->MV:I

    int-to-float v4, v0

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LC:I

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x0

    int-to-float v5, v0

    invoke-static/range {v1 .. v6}, Lcom/miui/securityscan/utils/h;->IU(Landroid/view/ViewGroup;JFFLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    const-wide/16 v4, 0xc8

    invoke-static {v0, v4, v5}, Lcom/miui/securityscan/utils/h;->IV(Landroid/view/View;J)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MN:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/miui/securityscan/MainActivity;->LK:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v2, v3, v1, v7}, Lcom/miui/securityscan/utils/h;->IW(Landroid/view/View;JFF)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    const-string/jumbo v1, "#FFFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "#BF000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/miui/securityscan/utils/h;->IX(Landroid/widget/TextView;JII)V

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    if-eq v0, v9, :cond_3

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->No()V

    :cond_3
    return-void
.end method

.method private MB()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mf:Lcom/miui/securityscan/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mf:Lcom/miui/securityscan/e/a;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/e/a;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mg:Lcom/miui/securityscan/e/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mg:Lcom/miui/securityscan/e/d;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/e/d;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Me:Lcom/miui/securityscan/e/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Me:Lcom/miui/securityscan/e/b;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/e/b;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method private ME()V
    .locals 7

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FB()J

    move-result-wide v2

    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f07078f

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/miui/securityscan/utils/m;->JF(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const v2, 0x7f070790

    invoke-virtual {p0, v2, v0}, Lcom/miui/securityscan/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f070791

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/miui/securityscan/A;

    invoke-direct {v5, p0}, Lcom/miui/securityscan/A;-><init>(Lcom/miui/securityscan/MainActivity;)V

    new-instance v6, Lcom/miui/securityscan/B;

    invoke-direct {v6, p0}, Lcom/miui/securityscan/B;-><init>(Lcom/miui/securityscan/MainActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/securityscan/utils/m;->JC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MM:Lmiui/app/AlertDialog;

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kq(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MA()V

    goto :goto_0
.end method

.method private MF()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FC()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/scanner/B;->FD(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/j;->DY(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/scanner/B;->FD(Ljava/util/List;)V

    goto :goto_0
.end method

.method private MG(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->MW()V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MU()V

    invoke-static {v0}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Lw:Lcom/miui/securityscan/cards/e;

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/cards/i;->Dk(Lcom/miui/securityscan/cards/k;)V

    invoke-static {v0}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->LX:Lcom/miui/securityscan/b;

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/cards/f;->CJ(Lcom/miui/securityscan/cards/g;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->Nl()V

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MZ:Lcom/miui/securityscan/a/a;

    invoke-direct {p0, v0, v1}, Lcom/miui/securityscan/MainActivity;->Nj(Landroid/content/Context;Lcom/miui/securityscan/a/a;)V

    invoke-static {}, Lcom/miui/securityscan/c;->Op()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/a/c;->Ic(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->LP:Z

    return-void
.end method

.method private MH()V
    .locals 11

    const/4 v10, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/securityscan/cards/c;->Ck()V

    invoke-static {}, Lcom/miui/securityscan/cards/c;->Cl()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvListTitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvListTitleCardModel;->getPosition()I

    move-result v9

    if-eq v9, v3, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvListTitleCardModel;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getPosition()I

    move-result v8

    if-eq v8, v3, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move v1, v2

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, v0, Lcom/miui/common/card/models/PlaceHolderCardModel;

    if-eqz v0, :cond_6

    move v4, v1

    :goto_3
    if-eq v4, v3, :cond_d

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lr:Lcom/miui/securityscan/scanner/v;

    invoke-static {v0, v2}, Lcom/miui/securityscan/cards/c;->Cm(Lcom/miui/securityscan/scanner/n;Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int v8, v0, v1

    const-string/jumbo v0, "com.miui.securityscan.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "advMap size is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",  models.size() is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",  max size is  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_4
    if-ge v3, v8, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    if-eqz v0, :cond_7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v9, v0, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v9, :cond_4

    check-cast v0, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvListTitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    new-instance v0, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v9}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "com.miui.securityscan.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "advMap is not empty when for() finished, the map size is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v3, v0, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v3, :cond_9

    check-cast v0, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvListTitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    new-instance v0, Lcom/miui/common/card/models/LineCardModel;

    invoke-direct {v0}, Lcom/miui/common/card/models/LineCardModel;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move-object v0, v1

    :goto_7
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-static {v5}, Lcom/miui/securityscan/cards/c;->Cn(Ljava/util/ArrayList;)V

    :goto_8
    invoke-static {}, Lcom/miui/securityscan/cards/c;->Cp()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/miui/securityscan/cards/c;->Cq()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/cards/c;->Cr(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/common/card/CardViewAdapter;->setModelList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lr:Lcom/miui/securityscan/scanner/v;

    invoke-static {v0, v10}, Lcom/miui/securityscan/cards/c;->Cm(Lcom/miui/securityscan/scanner/n;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lr:Lcom/miui/securityscan/scanner/v;

    invoke-static {v0, v10}, Lcom/miui/securityscan/cards/c;->Co(Lcom/miui/securityscan/scanner/n;Z)V

    goto :goto_8

    :cond_e
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lr:Lcom/miui/securityscan/scanner/v;

    invoke-static {v0, v10}, Lcom/miui/securityscan/cards/c;->Co(Lcom/miui/securityscan/scanner/n;Z)V

    goto :goto_8

    :cond_f
    move v4, v3

    goto/16 :goto_3
.end method

.method private MI()Ljava/util/ArrayList;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/securitycenter/a;->brP(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v3, "com.miui.securityscan.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isHomeListCacheDeleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string/jumbo v0, "securityscan_homelist_cache"

    invoke-static {v2, v0}, Lcom/miui/securityscan/utils/j;->Jc(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/miui/securitycenter/a;->brQ(Landroid/content/Context;Z)V

    :cond_0
    :try_start_0
    const-string/jumbo v0, "securityscan_homelist_cache"

    invoke-static {v2, v0}, Lcom/miui/securityscan/utils/j;->Jd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/miui/securityscan/cards/DataModel;->CT(Lorg/json/JSONObject;I)Lcom/miui/securityscan/cards/DataModel;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->getLayoutId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/securityscan/d/h;->LE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v4, "285_homepage"

    const/16 v5, 0x11d

    invoke-static {v2, v5, v4, v3}, Lcom/miui/securityscan/d/h;->LF(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/miui/securityscan/MainActivity;->Lq:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "optimize"

    invoke-static {v2}, Lcom/miui/securityscan/d/h;->LG(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->CU()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->CV()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->CS()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/cards/DataModel;->CW(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "com.miui.securityscan.MainActivity"

    const-string/jumbo v4, "create datamodel error:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/miui/securityscan/d/h;->LH()V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private ML(Z)V
    .locals 7

    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->LU:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securityscan/utils/m;->JA()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07078f

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securityscan/utils/m;->JB()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const v2, 0x7f070790

    invoke-virtual {p0, v2, v0}, Lcom/miui/securityscan/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f070791

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/miui/securityscan/t;

    invoke-direct {v5, p0}, Lcom/miui/securityscan/t;-><init>(Lcom/miui/securityscan/MainActivity;)V

    new-instance v6, Lcom/miui/securityscan/u;

    invoke-direct {v6, p0, p1}, Lcom/miui/securityscan/u;-><init>(Lcom/miui/securityscan/MainActivity;Z)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/securityscan/utils/m;->JC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LR:Lmiui/app/AlertDialog;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kq(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->MO:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/securityscan/utils/m;->JD()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f07078c

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f07078d

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f07078e

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/miui/securityscan/v;

    invoke-direct {v5, p0}, Lcom/miui/securityscan/v;-><init>(Lcom/miui/securityscan/MainActivity;)V

    new-instance v6, Lcom/miui/securityscan/w;

    invoke-direct {v6, p0, p1}, Lcom/miui/securityscan/w;-><init>(Lcom/miui/securityscan/MainActivity;Z)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/securityscan/utils/m;->JC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LR:Lmiui/app/AlertDialog;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kq(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->MI:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/securityscan/utils/m;->JE()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f070792

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f070793

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f070794

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/miui/securityscan/x;

    invoke-direct {v5, p0}, Lcom/miui/securityscan/x;-><init>(Lcom/miui/securityscan/MainActivity;)V

    new-instance v6, Lcom/miui/securityscan/y;

    invoke-direct {v6, p0, p1}, Lcom/miui/securityscan/y;-><init>(Lcom/miui/securityscan/MainActivity;Z)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/securityscan/utils/m;->JC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LR:Lmiui/app/AlertDialog;

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kq(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->MC()V

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/w;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/common/a/d;->onBackPressed()V

    goto :goto_0
.end method

.method private MO()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/MainActivity;->LC:I

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/MainActivity;->MV:I

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/MainActivity;->LK:I

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/MainActivity;->LH:I

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/MainActivity;->Mp:I

    return-void
.end method

.method private MP()V
    .locals 3

    const v0, 0x7f0a02a5

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mv:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mv:Landroid/view/ViewStub;

    new-instance v1, Lcom/miui/securityscan/q;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/q;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mv:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    new-instance v0, Lcom/miui/common/card/CardViewAdapter;

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/common/card/CardViewAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    const v0, 0x7f0a02a4

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MR:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MR:Landroid/view/ViewStub;

    new-instance v1, Lcom/miui/securityscan/r;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/r;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MR:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method private MQ()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/g;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/g;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->My:Lcom/miui/securityscan/scanner/g;

    new-instance v0, Lcom/miui/securityscan/scanner/t;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/t;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MP:Lcom/miui/securityscan/scanner/t;

    new-instance v0, Lcom/miui/securityscan/c/h;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/c/h;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mz:Lcom/miui/securityscan/c/h;

    new-instance v0, Lcom/miui/securityscan/c/g;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/c/g;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ms:Lcom/miui/securityscan/c/g;

    new-instance v0, Lcom/miui/securityscan/c/b;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/c/b;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    new-instance v0, Lcom/miui/securityscan/scanner/d;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/d;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mk:Lcom/miui/securityscan/scanner/d;

    new-instance v0, Lcom/miui/securityscan/c/d;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/c/d;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LV:Lcom/miui/securityscan/c/d;

    new-instance v0, Lcom/miui/securityscan/scanner/x;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/x;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mx:Lcom/miui/securityscan/scanner/x;

    new-instance v0, Lcom/miui/securityscan/scanner/v;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/scanner/v;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lr:Lcom/miui/securityscan/scanner/v;

    new-instance v0, Lcom/miui/securityscan/cards/e;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/cards/e;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lw:Lcom/miui/securityscan/cards/e;

    new-instance v0, Lcom/miui/securityscan/b;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/b;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LX:Lcom/miui/securityscan/b;

    new-instance v0, Lcom/miui/securityscan/c/c;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/c/c;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mw:Lcom/miui/securityscan/c/c;

    return-void
.end method

.method private MR()Z
    .locals 3

    const-string/jumbo v0, "data_config"

    invoke-static {p0, v0}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    const-string/jumbo v1, "is_homepage_operated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Mr:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private MS()V
    .locals 3

    new-instance v0, Lcom/miui/securityscan/e/b;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/e/b;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Me:Lcom/miui/securityscan/e/b;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Me:Lcom/miui/securityscan/e/b;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/e/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private MT()V
    .locals 0

    return-void
.end method

.method private MU()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/m;

    invoke-direct {v1, p0, v0}, Lcom/miui/securityscan/m;-><init>(Lcom/miui/securityscan/MainActivity;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/securityscan/m;->start()V

    return-void
.end method

.method private MV()V
    .locals 3

    new-instance v0, Lcom/miui/securityscan/e/d;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/e/d;-><init>(Lcom/miui/securityscan/MainActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mg:Lcom/miui/securityscan/e/d;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mg:Lcom/miui/securityscan/e/d;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/e/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static MY(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;II)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    invoke-static {p2}, Lcom/miui/securityscan/d/b;->Lo(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lcom/miui/securityscan/MainActivity;->Mz(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V

    :cond_2
    return-void
.end method

.method private MZ()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_auto_optimize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    sget-object v1, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Do:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    sget-object v1, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Dp:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    if-ne v0, v1, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v1, Lcom/miui/securityscan/I;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/I;-><init>(Lcom/miui/securityscan/MainActivity;)V

    const-wide/16 v2, 0x280

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/securityscan/scanner/w;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    sget-object v1, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Dq:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method public static Mz(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/securityscan/d/c;

    invoke-direct {v1, p0, p1}, Lcom/miui/securityscan/d/c;-><init>(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/b;->Lp(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic NA(Lcom/miui/securityscan/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Ma:Z

    return v0
.end method

.method static synthetic NB(Lcom/miui/securityscan/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Mb:Z

    return v0
.end method

.method static synthetic NC(Lcom/miui/securityscan/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->Mc:I

    return v0
.end method

.method static synthetic ND(Lcom/miui/securityscan/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Md:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic NE(Lcom/miui/securityscan/MainActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mn:J

    return-wide v0
.end method

.method static synthetic NF(Lcom/miui/securityscan/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->Mp:I

    return v0
.end method

.method static synthetic NG(Lcom/miui/securityscan/MainActivity;)Lcom/miui/securityscan/c/h;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mz:Lcom/miui/securityscan/c/h;

    return-object v0
.end method

.method static synthetic NH(Lcom/miui/securityscan/MainActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->ME:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic NI(Lcom/miui/securityscan/MainActivity;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MF:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic NJ(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/OverScrollLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MG:Lcom/miui/common/customview/OverScrollLayout;

    return-object v0
.end method

.method static synthetic NK(Lcom/miui/securityscan/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MH:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic NL(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MK:Lcom/miui/common/customview/AutoPasteListView;

    return-object v0
.end method

.method static synthetic NM(Lcom/miui/securityscan/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MN:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic NN(Lcom/miui/securityscan/MainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MW:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic NO(Lcom/miui/securityscan/MainActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MY:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic NP(Lcom/miui/securityscan/MainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic NQ(Lcom/miui/securityscan/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Nd:Z

    return v0
.end method

.method static synthetic NR(Lcom/miui/securityscan/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Nf:Z

    return v0
.end method

.method static synthetic NS(Lcom/miui/securityscan/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/MainActivity;->Lp:Z

    return p1
.end method

.method static synthetic NT(Lcom/miui/securityscan/MainActivity;Lcom/miui/securityscan/scanner/CleanupButtonStatus;)Lcom/miui/securityscan/scanner/CleanupButtonStatus;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    return-object p1
.end method

.method static synthetic NU(Lcom/miui/securityscan/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/MainActivity;->LT:Z

    return p1
.end method

.method static synthetic NV(Lcom/miui/securityscan/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/MainActivity;->LU:Z

    return p1
.end method

.method static synthetic NW(Lcom/miui/securityscan/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/MainActivity;->Ma:Z

    return p1
.end method

.method static synthetic NX(Lcom/miui/securityscan/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/MainActivity;->Mb:Z

    return p1
.end method

.method static synthetic NY(Lcom/miui/securityscan/MainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/MainActivity;->Mc:I

    return p1
.end method

.method static synthetic NZ(Lcom/miui/securityscan/MainActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/securityscan/MainActivity;->Mn:J

    return-wide p1
.end method

.method private Na()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/l;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/l;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0}, Lcom/miui/securityscan/l;->start()V

    return-void
.end method

.method private Nb()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/securityscan/utils/o;->JP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/securityscan/utils/o;->JP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {p0}, Lcom/miui/securityscan/utils/o;->JQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private Nd(Lcom/miui/securityscan/scanner/OptimizeItem;)V
    .locals 3

    const-string/jumbo v0, "com.miui.securityscan.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshOptimizingUi  optimizeItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/OptimizeItem;->DO()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/securityscan/scanner/OptimizeItem;->CD:Lcom/miui/securityscan/scanner/OptimizeItem;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    new-instance v1, Lcom/miui/securityscan/a;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/a;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HD(Lcom/miui/securityscan/scanner/OptimizeItem;Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    const v1, 0x7f070839

    invoke-virtual {p0, v1}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HE(Lcom/miui/securityscan/scanner/OptimizeItem;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HD(Lcom/miui/securityscan/scanner/OptimizeItem;Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mx:Lcom/miui/securityscan/scanner/x;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/x;->Fc(Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MX:Lcom/miui/securityscan/scanner/j;

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Mx:Lcom/miui/securityscan/scanner/x;

    invoke-virtual {v0, p1, v1}, Lcom/miui/securityscan/scanner/j;->Ea(Lcom/miui/securityscan/scanner/OptimizeItem;Lcom/miui/securityscan/scanner/k;)V

    goto :goto_0
.end method

.method private Ne()V
    .locals 2

    invoke-static {}, Lcom/miui/securityscan/c;->Or()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/securityscan/c;->Os(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/securityscan/c/b;->Jv:Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/j;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/j;->DT(Lcom/miui/securityscan/c/a;)V

    :cond_0
    return-void
.end method

.method private Ni()V
    .locals 10

    const-wide/16 v6, 0x708

    const-wide/16 v2, 0x5dc

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MX:Lcom/miui/securityscan/scanner/j;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/j;->DV()Lcom/miui/securityscan/scanner/PredictScanItem;

    move-result-object v0

    const-string/jumbo v1, "setPredictScore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PredictScanItem: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iget-wide v8, p0, Lcom/miui/securityscan/MainActivity;->MD:J

    cmp-long v1, v8, v4

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/miui/securityscan/MainActivity;->MD:J

    sub-long/2addr v0, v8

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v8, v1

    invoke-static {v8, v9}, Lcom/miui/securityscan/d/a;->Kr(J)V

    :cond_0
    float-to-double v0, v0

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    cmpg-double v0, v0, v8

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v8, Lcom/miui/securityscan/D;

    invoke-direct {v8, p0}, Lcom/miui/securityscan/D;-><init>(Lcom/miui/securityscan/MainActivity;)V

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1, v8, v2, v3}, Lcom/miui/securityscan/scanner/w;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v3, Lcom/miui/securityscan/F;

    invoke-direct {v3, p0}, Lcom/miui/securityscan/F;-><init>(Lcom/miui/securityscan/MainActivity;)V

    if-eqz v0, :cond_3

    const-wide/16 v0, 0xce4

    :goto_2
    invoke-virtual {v2, v3, v0, v1}, Lcom/miui/securityscan/scanner/w;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-wide v2, v4

    goto :goto_1

    :cond_3
    move-wide v0, v6

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MX:Lcom/miui/securityscan/scanner/j;

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Mw:Lcom/miui/securityscan/c/c;

    invoke-virtual {v1, v0, v2}, Lcom/miui/securityscan/scanner/j;->DW(Lcom/miui/securityscan/scanner/PredictScanItem;Lcom/miui/securityscan/scanner/k;)V

    goto :goto_3
.end method

.method private Nj(Landroid/content/Context;Lcom/miui/securityscan/a/a;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/securityscan/a/a;->HZ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lu:Lcom/miui/common/customview/gif/GifImageView;

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MZ:Lcom/miui/securityscan/a/a;

    invoke-static {p1, v0, v1}, Lcom/miui/securityscan/a/c;->Id(Landroid/content/Context;Lcom/miui/common/customview/gif/GifImageView;Lcom/miui/securityscan/a/a;)V

    invoke-static {p1}, Lcom/miui/securityscan/a/c;->Ie(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securityscan/d/a;->Kg()V

    :cond_0
    return-void
.end method

.method private Nl()V
    .locals 3

    const v2, 0x7f070688

    const/4 v1, 0x0

    const-string/jumbo v0, "scan"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kd(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/miui/securityscan/MainActivity;->Mq:Z

    sget-object v0, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Dq:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iput-boolean v1, p0, Lcom/miui/securityscan/MainActivity;->MB:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/MainActivity;->MC:Z

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/MainActivity;->MD:J

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    new-instance v1, Lcom/miui/securityscan/C;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/C;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/CircleView;->Gw(Lcom/miui/securityscan/ui/main/a;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MX:Lcom/miui/securityscan/scanner/j;

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Mz:Lcom/miui/securityscan/c/h;

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->My:Lcom/miui/securityscan/scanner/g;

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/j;->DU(Lcom/miui/securityscan/c/a;Lcom/miui/securityscan/scanner/l;)V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->Ni()V

    return-void
.end method

.method private No()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/J;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/J;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic Ns(Lcom/miui/securityscan/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Lp:Z

    return v0
.end method

.method static synthetic Nt(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/gif/GifImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lu:Lcom/miui/common/customview/gif/GifImageView;

    return-object v0
.end method

.method static synthetic Nu(Lcom/miui/securityscan/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Ly:Z

    return v0
.end method

.method static synthetic Nv(Lcom/miui/securityscan/MainActivity;)Lcom/miui/common/customview/AutoPasteListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lz:Lcom/miui/common/customview/AutoPasteListView;

    return-object v0
.end method

.method static synthetic Nw(Lcom/miui/securityscan/MainActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LA:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic Nx(Lcom/miui/securityscan/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LC:I

    return v0
.end method

.method static synthetic Ny(Lcom/miui/securityscan/MainActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LH:I

    return v0
.end method

.method static synthetic Nz(Lcom/miui/securityscan/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic Oa(Lcom/miui/securityscan/MainActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/securityscan/MainActivity;->Mo:J

    return-wide p1
.end method

.method static synthetic Ob(Lcom/miui/securityscan/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainActivity;->ME:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic Oc(Lcom/miui/securityscan/MainActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainActivity;->MH:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic Od(Lcom/miui/securityscan/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/MainActivity;->MI:Z

    return p1
.end method

.method static synthetic Oe(Lcom/miui/securityscan/MainActivity;Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/AutoPasteListView;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainActivity;->MK:Lcom/miui/common/customview/AutoPasteListView;

    return-object p1
.end method

.method static synthetic Of(Lcom/miui/securityscan/MainActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainActivity;->ML:Landroid/view/View;

    return-object p1
.end method

.method static synthetic Og(Lcom/miui/securityscan/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/MainActivity;->MO:Z

    return p1
.end method

.method static synthetic Oh(Lcom/miui/securityscan/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/MainActivity;->Nf:Z

    return p1
.end method

.method static synthetic Oi(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onBackPressed()V

    return-void
.end method

.method static synthetic Oj(Lcom/miui/securityscan/MainActivity;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MI()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Ok(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MA()V

    return-void
.end method

.method static synthetic Ol(Lcom/miui/securityscan/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/MainActivity;->MG(Z)V

    return-void
.end method

.method static synthetic Om(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/securityscan/MainActivity;->MY(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic On(Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->Ni()V

    return-void
.end method

.method private static synthetic Oo()[I
    .locals 3

    sget-object v0, Lcom/miui/securityscan/MainActivity;->Ng:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/MainActivity;->Ng:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->values()[Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Do:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Dp:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Dq:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Dr:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Ds:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/securityscan/MainActivity;->Ng:[I

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

.method private bindView()V
    .locals 6

    const v5, 0x7f0705ff

    const/16 v4, 0x64

    const/4 v3, 0x0

    const v0, 0x7f0a0286

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LA:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LA:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a029f

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MW:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MW:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const v0, 0x7f0a02a0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/gif/GifImageView;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lu:Lcom/miui/common/customview/gif/GifImageView;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lu:Lcom/miui/common/customview/gif/GifImageView;

    invoke-virtual {v0, p0}, Lcom/miui/common/customview/gif/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MY:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MY:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0232

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MN:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0285

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mj:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02a1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Md:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mj:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Mj:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MN:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/miui/securityscan/MainActivity;->Mp:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MN:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v0, 0x7f0a02a2

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/OverScrollLayout;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MG:Lcom/miui/common/customview/OverScrollLayout;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MG:Lcom/miui/common/customview/OverScrollLayout;

    new-instance v1, Lcom/miui/securityscan/n;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/n;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/OverScrollLayout;->aFL(Lcom/miui/common/customview/c;)V

    const v0, 0x7f0a02a3

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lz:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lz:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFz(I)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lz:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0}, Lcom/miui/common/customview/AutoPasteListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/o;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/o;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lz:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/securityscan/p;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/p;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v0, 0x7f0a029b

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/CircleView;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    const v0, 0x7f0a029a

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/BallView;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LB:Lcom/miui/securityscan/ui/main/BallView;

    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a029d

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a029e

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a018c

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ScoreTextView;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0, v4}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {p0, v4, v0}, Lcom/miui/securityscan/utils/h;->IP(Landroid/content/Context;ILandroid/widget/Button;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-static {p0, v4, v0}, Lcom/miui/securityscan/utils/h;->IQ(Landroid/content/Context;ILandroid/widget/TextView;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    invoke-virtual {v0, v4}, Lcom/miui/securityscan/ui/main/CircleView;->Gt(I)V

    const v0, 0x7f0a029c

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LL:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private initData()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MS:Ljava/util/List;

    const-string/jumbo v0, "data_config"

    invoke-static {p0, v0}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    const-string/jumbo v1, "is_homepage_operated"

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/b/c;->JS(Ljava/lang/String;Z)V

    iput v2, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Mb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Md:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/miui/securityscan/utils/h;->IO(Landroid/view/View;)V

    :goto_0
    new-instance v0, Lcom/miui/common/card/CardViewAdapter;

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/common/card/CardViewAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/common/card/CardViewAdapter;->setNotifyOnChange(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MN:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/miui/securityscan/utils/h;->IO(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public MC()V
    .locals 2

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LE:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MX:Lcom/miui/securityscan/scanner/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MX:Lcom/miui/securityscan/scanner/j;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/j;->cancel()V

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Do:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public MD()V
    .locals 7

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LD:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/securityscan/MainActivity;->Na:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    if-eq v0, v6, :cond_1

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->LF:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v0, "com.miui.securityscan.MainActivity"

    const-string/jumbo v2, "cancelScan()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->LF:Z

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MX:Lcom/miui/securityscan/scanner/j;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/j;->cancel()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LV:Lcom/miui/securityscan/c/d;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/miui/securityscan/c/d;->canceled:Z

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v2, Lcom/miui/securityscan/z;

    invoke-direct {v2, p0}, Lcom/miui/securityscan/z;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/scanner/w;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public MJ()V
    .locals 7

    const-wide/16 v2, 0x1f4

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->MA:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->MB:Z

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MZ:Lcom/miui/securityscan/a/a;

    invoke-static {v0}, Lcom/miui/securityscan/a/c;->If(Lcom/miui/securityscan/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lu:Lcom/miui/common/customview/gif/GifImageView;

    invoke-static {v0}, Lcom/miui/securityscan/a/c;->Ig(Landroid/view/View;)V

    :cond_0
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ecccccd    # 0.4f

    const v4, 0x3ef5c28f    # 0.48f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v6, v1, v4, v5, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {v0, v2, v3, v6}, Lcom/miui/securityscan/utils/h;->IT(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LL:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LC:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    invoke-static/range {v1 .. v6}, Lcom/miui/securityscan/utils/h;->IU(Landroid/view/ViewGroup;JFFLandroid/animation/TimeInterpolator;)V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->Nb()V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->Nf()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/miui/securityscan/d/a;->Ks(J)V

    invoke-static {p0, v0}, Lcom/miui/securitycenter/a;->brR(Landroid/content/Context;I)V

    sget-object v0, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Dp:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    :cond_1
    return-void
.end method

.method public MK()V
    .locals 11

    const/4 v10, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x12c

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->LY:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.miui.securityscan.MainActivity"

    const-string/jumbo v1, "finishScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/miui/securityscan/MainActivity;->LI:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mm:J

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/CircleView;->Gz()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LB:Lcom/miui/securityscan/ui/main/BallView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/BallView;->GX()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MW:Landroid/widget/TextView;

    const-wide/16 v6, 0x1f4

    invoke-static {v0, v6, v7}, Lcom/miui/securityscan/utils/h;->IV(Landroid/view/View;J)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-static {v0, v2, v3}, Lcom/miui/securityscan/utils/h;->IV(Landroid/view/View;J)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    const-wide/16 v6, 0xc8

    invoke-static {v0, v6, v7}, Lcom/miui/securityscan/utils/h;->IZ(Landroid/view/View;J)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MN:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/miui/securityscan/MainActivity;->LK:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/miui/securityscan/utils/h;->IW(Landroid/view/View;JFF)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    const-string/jumbo v1, "#BF000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v5, "#FFFFFFFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v2, v3, v1, v5}, Lcom/miui/securityscan/utils/h;->IX(Landroid/widget/TextView;JII)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LL:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->MV:I

    int-to-float v5, v0

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3ecccccd    # 0.4f

    const v9, 0x3e4ccccd    # 0.2f

    invoke-direct {v6, v7, v8, v9, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static/range {v1 .. v6}, Lcom/miui/securityscan/utils/h;->IU(Landroid/view/ViewGroup;JFFLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->ML:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/securityscan/utils/h;->IO(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->ML:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/utils/h;->Ja(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->Nb()V

    iput v10, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    sget-object v0, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Dr:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MK:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MH()V

    invoke-static {}, Lcom/miui/securityscan/d/a;->Kl()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/MainActivity;->LS:J

    :cond_1
    return-void
.end method

.method public MM(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->isSafe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/securityscan/cards/c;->Ci(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->Nf()I

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/miui/securityscan/utils/o;->JP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {p0}, Lcom/miui/securityscan/utils/o;->JQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/securityscan/cards/c;->Ci(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0
.end method

.method public MN()V
    .locals 4

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->ME:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Lz:Lcom/miui/common/customview/AutoPasteListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v2}, Lcom/miui/common/card/CardViewAdapter;->clear()V

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/common/card/CardViewAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Lz:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v3, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v2, v3}, Lcom/miui/common/customview/AutoPasteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lz:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFy(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lz:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFy(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected MW()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lz:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/securityscan/g;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/g;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFA(Lcom/miui/common/customview/b;)V

    const v0, 0x7f0a0299

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mi:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mi:Landroid/view/ViewStub;

    new-instance v1, Lcom/miui/securityscan/h;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/h;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mi:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-static {p0}, Lcom/miui/common/d/d;->getInstance(Landroid/content/Context;)Lcom/miui/common/d/d;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Lcom/miui/common/d/d;->aLe(I)V

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/miui/securityscan/utils/a;->Ii(Landroid/app/Activity;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/i;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/i;-><init>(Lcom/miui/securityscan/MainActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/securityscan/j;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/j;-><init>(Lcom/miui/securityscan/MainActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/securityscan/k;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/k;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->mAlertDialog:Lmiui/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "com.miui.securityscan.MainActivity"

    const-string/jumbo v2, "show CTA alert dialog:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-static {p0, v2, v2, v2, v2}, Lcom/miui/securityscan/utils/a;->Ij(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/miui/securityscan/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected MX()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LR:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LR:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LR:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MM:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MM:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MM:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public Nc()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MX:Lcom/miui/securityscan/scanner/j;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/j;->DZ()Lcom/miui/securityscan/scanner/OptimizeItem;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "refreshOptimizingUi"

    const-string/jumbo v1, "refreshOptimizingUi  optimizeItem == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/securityscan/MainActivity;->Mt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string/jumbo v2, "refreshOptimizingUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OptimizeTime :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Kt(J)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0}, Lcom/miui/common/customview/ScoreTextView;->getTextScore()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Ku(J)V

    invoke-static {v5}, Lcom/miui/antivirus/i;->aDt(I)V

    invoke-static {v5}, Lcom/miui/antivirus/i;->aDu(I)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FE()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {p0, v0, v1}, Lcom/miui/securityscan/utils/h;->IP(Landroid/content/Context;ILandroid/widget/Button;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-static {p0, v0, v1}, Lcom/miui/securityscan/utils/h;->IQ(Landroid/content/Context;ILandroid/widget/TextView;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/ui/main/CircleView;->Gt(I)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LB:Lcom/miui/securityscan/ui/main/BallView;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/ui/main/BallView;->GW(I)V

    invoke-static {p0, v0}, Lcom/miui/securitycenter/a;->brR(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->Nn(I)V

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/B;->FF()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lmiui/text/ExtraTextUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f07060e

    invoke-virtual {p0, v1, v0}, Lcom/miui/securityscan/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/e;

    invoke-direct {v1, v0, v5}, Lcom/miui/securityscan/scanner/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v0

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DI:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    const-string/jumbo v3, "CLEAN_UNUSED_MEMORY"

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/securityscan/scanner/y;->Fe(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;Ljava/lang/String;Lcom/miui/securityscan/scanner/e;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FG()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0c0031

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/e;

    invoke-direct {v1, v0, v6}, Lcom/miui/securityscan/scanner/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/securityscan/scanner/y;->getInstance()Lcom/miui/securityscan/scanner/y;

    move-result-object v0

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->DG:Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    const-string/jumbo v3, "VIRUS"

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/securityscan/scanner/y;->Fe(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;Ljava/lang/String;Lcom/miui/securityscan/scanner/e;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v1, Lcom/miui/securityscan/H;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/H;-><init>(Lcom/miui/securityscan/MainActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/securityscan/scanner/w;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/miui/securityscan/MainActivity;->Nd(Lcom/miui/securityscan/scanner/OptimizeItem;)V

    goto :goto_0
.end method

.method public Nf()I
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->getScore()I

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {p0, v0, v1}, Lcom/miui/securityscan/utils/h;->IP(Landroid/content/Context;ILandroid/widget/Button;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-static {p0, v0, v1}, Lcom/miui/securityscan/utils/h;->IQ(Landroid/content/Context;ILandroid/widget/TextView;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/ui/main/CircleView;->Gt(I)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->Nn(I)V

    return v0
.end method

.method public Ng(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;I)V
    .locals 8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    packed-switch p3, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/securityscan/cards/c;->Ci(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/securityscan/cards/c;->Ci(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/AdvListTitleCardModel;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvListTitleCardModel;->getId()J

    move-result-wide v4

    move-object v1, v0

    check-cast v1, Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvListTitleCardModel;->getId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/miui/securityscan/cards/c;->Ci(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    if-eqz p2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v4, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_9
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_b
    move-object v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Nh(Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/securityscan/cards/c;->Ci(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/securityscan/cards/c;->Ci(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/common/card/models/AdvCardModel;

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v4

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v5

    if-ne v4, v5, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/miui/securityscan/cards/c;->Ci(Ljava/util/List;Lcom/miui/common/card/models/BaseCardModel;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Nk(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lt:Lcom/miui/securityscan/scanner/h;

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/common/customview/AdImageView;->aGq(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public Nm()V
    .locals 11

    const-wide/16 v2, 0x1f4

    const v10, 0x7f070761

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    if-ne v0, v9, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Lp:Z

    if-eqz v0, :cond_1

    iput-boolean v8, p0, Lcom/miui/securityscan/MainActivity;->Nf:Z

    return-void

    :cond_1
    const-string/jumbo v0, "optimize"

    invoke-static {v0}, Lcom/miui/securityscan/d/h;->LD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/CircleView;->Gy()V

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->LP:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v7}, Lcom/miui/securityscan/MainActivity;->MG(Z)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LW:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_2
    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->MQ:Z

    if-nez v0, :cond_3

    iput-boolean v8, p0, Lcom/miui/securityscan/MainActivity;->MQ:Z

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MP()V

    :cond_3
    iput-boolean v7, p0, Lcom/miui/securityscan/MainActivity;->LJ:Z

    iput-boolean v7, p0, Lcom/miui/securityscan/MainActivity;->LI:Z

    iput-boolean v7, p0, Lcom/miui/securityscan/MainActivity;->LF:Z

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MF()V

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ecccccd    # 0.4f

    const v4, 0x3ef5c28f    # 0.48f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v6, v1, v4, v5, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {v0, v2, v3, v6}, Lcom/miui/securityscan/utils/h;->IY(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Ly:Z

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LL:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LC:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/miui/securityscan/utils/h;->IU(Landroid/view/ViewGroup;JFFLandroid/animation/TimeInterpolator;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;->reset()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LA:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MG:Lcom/miui/common/customview/OverScrollLayout;

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-static {v0, v1, v2, v8}, Lcom/miui/securityscan/utils/h;->IS(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V

    iput v9, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-static {v0}, Lcom/miui/securityscan/utils/h;->IO(Landroid/view/View;)V

    iget-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mo:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/securityscan/MainActivity;->Mo:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Ko(J)V

    :cond_5
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LV:Lcom/miui/securityscan/c/d;

    iput-boolean v7, v0, Lcom/miui/securityscan/c/d;->canceled:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mt:J

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MX:Lcom/miui/securityscan/scanner/j;

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Mk:Lcom/miui/securityscan/scanner/d;

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Ms:Lcom/miui/securityscan/c/g;

    iget-object v3, p0, Lcom/miui/securityscan/MainActivity;->LV:Lcom/miui/securityscan/c/d;

    iget-object v4, p0, Lcom/miui/securityscan/MainActivity;->MP:Lcom/miui/securityscan/scanner/t;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/securityscan/scanner/j;->DX(Lcom/miui/securityscan/scanner/m;Lcom/miui/securityscan/c/a;Lcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/l;)V

    sget-object v0, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->Ds:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->Nc()V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MV()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Na:J

    return-void
.end method

.method public Nn(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Mq:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->No()V

    :cond_0
    return-void
.end method

.method public Np(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Lv:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/securityscan/cards/a;->BY()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/miui/securityscan/cards/c;->Cj(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v2}, Lcom/miui/common/card/CardViewAdapter;->clear()V

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/common/card/CardViewAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public Nq()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v1, Lcom/miui/securityscan/G;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/G;-><init>(Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/w;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Nr()I
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v0}, Lcom/miui/common/customview/ScoreTextView;->getTextScore()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MH()V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->Nf()I

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Nc:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/securityscan/utils/o;->JP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/securityscan/utils/o;->JP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {p0}, Lcom/miui/securityscan/utils/o;->JQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v1}, Lcom/miui/common/customview/ScoreTextView;->getTextScore()I

    move-result v1

    sub-int v0, v1, v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->ML:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    iput-boolean v4, v0, Lcom/miui/securityscan/c/b;->Jv:Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/j;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/j;->DT(Lcom/miui/securityscan/c/a;)V

    goto :goto_0

    :sswitch_1
    if-ne p2, v0, :cond_1

    invoke-static {v4}, Lcom/miui/securityscan/c;->Oq(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->ML:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    iput-boolean v4, v0, Lcom/miui/securityscan/c/b;->Jv:Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/j;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/j;->DT(Lcom/miui/securityscan/c/a;)V

    goto :goto_0

    :sswitch_2
    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    const-string/jumbo v0, "unClearedCacheSize"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->ML:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    const-string/jumbo v1, "unClearedCacheSize"

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/securityscan/scanner/B;->FA(J)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    iput-boolean v4, v0, Lcom/miui/securityscan/c/b;->Jv:Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/j;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/j;->DT(Lcom/miui/securityscan/c/a;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    const-string/jumbo v0, "isCleanCanceled"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->ML:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/securityscan/scanner/B;->FA(J)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    iput-boolean v4, v0, Lcom/miui/securityscan/c/b;->Jv:Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/j;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/j;->DT(Lcom/miui/securityscan/c/a;)V

    goto/16 :goto_0

    :sswitch_3
    if-ne p2, v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/securityscan/utils/a;->Il(Landroid/content/Context;Z)V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Ly:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->Nm()V

    goto/16 :goto_0

    :cond_5
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/a;->Il(Landroid/content/Context;Z)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/securityscan/MainActivity;->Oo()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LO:Lcom/miui/securityscan/scanner/CleanupButtonStatus;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/CleanupButtonStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MR()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/securityscan/MainActivity;->ML(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/scanner/w;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/common/a/d;->onBackPressed()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MR()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/securityscan/MainActivity;->ML(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/scanner/w;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->MC()V

    invoke-super {p0}, Lcom/miui/common/a/d;->onBackPressed()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/scanner/w;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->MD()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/scanner/w;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->ME()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const-wide/16 v2, 0x64

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iput-boolean v1, p0, Lcom/miui/securityscan/MainActivity;->Mr:Z

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->Nm()V

    const-string/jumbo v0, "optimize"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kd(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securityscan/ui/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, ":miui:starting_window_label"

    const v2, 0x7f070604

    invoke-virtual {p0, v2}, Lcom/miui/securityscan/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v0, "securitysettings"

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kd(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->onBackPressed()V

    goto :goto_0

    :sswitch_3
    iput-boolean v1, p0, Lcom/miui/securityscan/MainActivity;->Mr:Z

    invoke-static {}, Lcom/miui/securityscan/d/a;->Kp()V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MZ:Lcom/miui/securityscan/a/a;

    invoke-virtual {v0, v2, v3}, Lcom/miui/securityscan/a/a;->HY(J)Lcom/miui/c/c;

    move-result-object v4

    const-string/jumbo v5, "securitycenterScan"

    const-string/jumbo v6, "com.miui.securitycenter_skinindex"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/c/f;->bzp(Landroid/content/Context;JLcom/miui/c/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0047 -> :sswitch_1
        0x7f0a00c8 -> :sswitch_0
        0x7f0a0286 -> :sswitch_2
        0x7f0a02a0 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/cards/d;->Cu(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->Na()V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "isSecondScreen"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Mb:Z

    :cond_0
    const v0, 0x7f0300e8

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/MainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_auto_optimize"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/securityscan/MainActivity;->Ly:Z

    const-string/jumbo v1, "enter_homepage_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "security_scan_channel_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kc(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-static {p0}, Lcom/miui/securityscan/scanner/j;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MX:Lcom/miui/securityscan/scanner/j;

    invoke-static {p0}, Lcom/miui/securityscan/a/a;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/MainActivity;->MZ:Lcom/miui/securityscan/a/a;

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MO()V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->bindView()V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->initData()V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MF:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->Nd:Z

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->LT:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->MN()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MQ()V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LW:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    iput-boolean v3, p0, Lcom/miui/securityscan/MainActivity;->Lx:Z

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MT()V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MS()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Mh:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    if-eqz v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v0, Lcom/miui/common/card/models/AdvInternationalCardModel;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/cards/d;->Cv(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MJ:Lcom/miui/common/card/CardViewAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewAdapter;->onDestroy()V

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lu:Lcom/miui/common/customview/gif/GifImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lu:Lcom/miui/common/customview/gif/GifImageView;

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/GifImageView;->aEx()V

    :cond_4
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    invoke-virtual {v0, v3}, Lcom/miui/securityscan/scanner/w;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lt:Lcom/miui/securityscan/scanner/h;

    invoke-virtual {v0, v3}, Lcom/miui/securityscan/scanner/h;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->LP:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->MX()V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/securityscan/MainActivity;->Ln:J

    invoke-virtual {p0}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->Lw:Lcom/miui/securityscan/cards/e;

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/cards/i;->Dl(Lcom/miui/securityscan/cards/k;)V

    invoke-static {v0}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/MainActivity;->LX:Lcom/miui/securityscan/b;

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/cards/f;->CK(Lcom/miui/securityscan/cards/g;)V

    invoke-static {p0}, Lcom/miui/securityscan/a/a;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/a/a;->HX()V

    invoke-static {}, Lcom/miui/securityscan/utils/h;->IR()V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/utils/f;->II(Ljava/io/File;)V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MB()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/MainActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->MZ()V

    return-void
.end method

.method protected onRestart()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/miui/common/a/d;->onRestart()V

    iput-boolean v2, p0, Lcom/miui/securityscan/MainActivity;->LZ:Z

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0, p0}, Lcom/miui/securityscan/scanner/B;->Fz(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->getScore()I

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->MU:Lcom/miui/common/customview/ScoreTextView;

    invoke-virtual {v1, v0}, Lcom/miui/common/customview/ScoreTextView;->setScore(I)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ls:Landroid/widget/Button;

    invoke-static {p0, v0, v1}, Lcom/miui/securityscan/utils/h;->IP(Landroid/content/Context;ILandroid/widget/Button;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Nb:Landroid/widget/TextView;

    invoke-static {p0, v0, v1}, Lcom/miui/securityscan/utils/h;->IQ(Landroid/content/Context;ILandroid/widget/TextView;)V

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->LG:Lcom/miui/securityscan/ui/main/CircleView;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/ui/main/CircleView;->Gt(I)V

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->Nb()V

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/c;->Ot()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/securityscan/c;->Ou(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    iput-boolean v2, v0, Lcom/miui/securityscan/c/b;->Jv:Z

    invoke-static {p0}, Lcom/miui/securityscan/scanner/j;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/MainActivity;->Ne:Lcom/miui/securityscan/c/b;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/j;->DT(Lcom/miui/securityscan/c/a;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    invoke-static {}, Lcom/miui/securityscan/d/a;->Kk()V

    const-string/jumbo v0, "optimize"

    invoke-static {v0}, Lcom/miui/securityscan/d/h;->LG(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/miui/securityscan/MainActivity;->Lq:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mm:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mo:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mn:J

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/miui/securityscan/d/a;->Kl()V

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->Ne()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/securityscan/MainActivity;->LZ:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/miui/securityscan/MainActivity;->No()V

    :cond_1
    iput-boolean v3, p0, Lcom/miui/securityscan/MainActivity;->LZ:Z

    :cond_2
    iput-boolean v3, p0, Lcom/miui/securityscan/MainActivity;->Mq:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "isSecondScreen"

    iget-boolean v1, p0, Lcom/miui/securityscan/MainActivity;->Mb:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 6

    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/miui/common/a/d;->onStop()V

    iput-boolean v1, p0, Lcom/miui/securityscan/MainActivity;->Mq:Z

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lu:Lcom/miui/common/customview/gif/GifImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->Lu:Lcom/miui/common/customview/gif/GifImageView;

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/GifImageView;->clear()V

    :cond_0
    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mm:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/securityscan/MainActivity;->Mm:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Km(J)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->getScore()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Kn(J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/miui/securityscan/MainActivity;->LN:I

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/miui/securityscan/MainActivity;->Mo:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/securityscan/MainActivity;->Mo:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/miui/securityscan/d/a;->Ko(J)V

    goto :goto_0
.end method
