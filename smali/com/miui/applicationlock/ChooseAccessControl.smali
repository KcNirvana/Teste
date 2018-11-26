.class public Lcom/miui/applicationlock/ChooseAccessControl;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static ahE:I

.field private static final synthetic ahU:[I


# instance fields
.field private ahF:Z

.field private ahG:Landroid/view/accessibility/AccessibilityManager;

.field private ahH:Lcom/miui/applicationlock/utils/e;

.field private ahI:Landroid/app/AppOpsManager;

.field private ahJ:Lcom/miui/applicationlock/utils/n;

.field private ahK:Ljava/lang/String;

.field private ahL:Ljava/lang/String;

.field private ahM:Landroid/widget/TextView;

.field private ahN:Landroid/widget/TextView;

.field protected ahO:Landroid/widget/TextView;

.field private ahP:Ljava/lang/String;

.field private ahQ:Landroid/text/Editable;

.field private ahR:Landroid/widget/TextView;

.field private ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

.field private ahT:Lcom/miui/applicationlock/widget/h;

.field private mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/miui/applicationlock/ChooseAccessControl;->ahE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    new-instance v0, Lcom/miui/applicationlock/ao;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ao;-><init>(Lcom/miui/applicationlock/ChooseAccessControl;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahJ:Lcom/miui/applicationlock/utils/n;

    return-void
.end method

.method static synthetic aoA(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahN:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aoB(Lcom/miui/applicationlock/ChooseAccessControl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aoC(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    return-object v0
.end method

.method static synthetic aoD(Lcom/miui/applicationlock/ChooseAccessControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic aoE(Lcom/miui/applicationlock/ChooseAccessControl;Landroid/text/Editable;)Landroid/text/Editable;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahQ:Landroid/text/Editable;

    return-object p1
.end method

.method static synthetic aoF(Lcom/miui/applicationlock/ChooseAccessControl;Lcom/miui/applicationlock/ChooseAccessControl$Stage;)Lcom/miui/applicationlock/ChooseAccessControl$Stage;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    return-object p1
.end method

.method static synthetic aoG(Lcom/miui/applicationlock/ChooseAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->aon()V

    return-void
.end method

.method private static synthetic aoH()[I
    .locals 3

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl;->ahU:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl;->ahU:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->values()[Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aim:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ain:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aio:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl;->ahU:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private aon()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahQ:Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahL:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahQ:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->aot()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahQ:Landroid/text/Editable;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahQ:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ain:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    goto :goto_0
.end method

.method private aoo(ILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IIIILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;ILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;)V
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aoL(I)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, p2}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aoM(Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, p3}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aoN(Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aim:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, p5}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aoL(I)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aio:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, p6}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aoL(I)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, p7}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aoL(I)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, p8}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aoM(Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ain:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, p9}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aoM(Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, p10}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aoL(I)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v0, p11}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aoM(Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;)V

    return-void
.end method

.method private aop(Ljava/lang/String;)V
    .locals 12

    const-string/jumbo v0, "numeric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahR:Landroid/widget/TextView;

    const v1, 0x7f07081b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->aib:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v3, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aig:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    sget-object v8, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->aib:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v9, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->aib:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahF:Z

    if-eqz v0, :cond_1

    const v10, 0x7f0707e7

    :goto_0
    sget-object v11, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->aib:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    const v1, 0x7f0707d8

    const v4, 0x7f0707d2

    const v5, 0x7f0707d5

    const v6, 0x7f0707db

    const v7, 0x7f0707de

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/miui/applicationlock/ChooseAccessControl;->aoo(ILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IIIILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;ILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahG:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07081b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "mixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahR:Landroid/widget/TextView;

    const v1, 0x7f07081c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->aib:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v3, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aig:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    sget-object v8, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->aia:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v9, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->aia:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahF:Z

    if-eqz v0, :cond_2

    const v10, 0x7f0707e9

    :goto_2
    sget-object v11, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->aia:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    const v1, 0x7f0707d9

    const v4, 0x7f0707d3

    const v5, 0x7f0707d6

    const v6, 0x7f0707dc

    const v7, 0x7f0707df

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/miui/applicationlock/ChooseAccessControl;->aoo(ILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IIIILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;ILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahG:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07081c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const v10, 0x7f0707e6

    goto :goto_0

    :cond_2
    const v10, 0x7f0707e8

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahR:Landroid/widget/TextView;

    const v1, 0x7f07081a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahX:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v3, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aih:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    sget-object v8, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahY:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v9, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahY:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v11, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahY:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    const v1, 0x7f0707d7

    const v4, 0x7f0707d1

    const v5, 0x7f0707d4

    const v6, 0x7f0707da

    const v7, 0x7f0707dd

    const v10, 0x7f0707e5

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/miui/applicationlock/ChooseAccessControl;->aoo(ILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;IIIILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;ILcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahG:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07081a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private aor()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agZ()V

    return-void
.end method

.method private aos(IZ)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahI:Landroid/app/AppOpsManager;

    const-string/jumbo v1, "setUserRestriction"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/miui/applicationlock/ChooseAccessControl;->mBinder:Landroid/os/IBinder;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/c/a;->btB(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ChooseAccessControl"

    const-string/jumbo v2, "restrictOpsWindow error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private aou()V
    .locals 3

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmiui/security/SecurityManager;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aeC(Z)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/applicationlock/utils/m;->age(JLandroid/content/Context;)V

    return-void
.end method

.method static synthetic aow(Lcom/miui/applicationlock/ChooseAccessControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahF:Z

    return v0
.end method

.method static synthetic aox(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahG:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic aoy(Lcom/miui/applicationlock/ChooseAccessControl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aoz(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahM:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected aoq()V
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    return-void
.end method

.method protected aot()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoq()V

    const-string/jumbo v0, "ChooseAccessControl"

    const-string/jumbo v1, "password is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahF:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->aou()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->setResult(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->finish()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0xf98a8

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aim:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->headerMessage:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahG:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->headerMessage:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->leftMode:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahX:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahM:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->rightMode:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aih:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahN:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-boolean v0, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->patternEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agT()V

    :goto_3
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adp:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->ahc(Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;)V

    invoke-static {}, Lcom/miui/applicationlock/ChooseAccessControl;->aoH()[I

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_4
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahO:Landroid/widget/TextView;

    iget v1, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->headerMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahG:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->headerMessage:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahM:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahM:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->leftMode:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    iget v1, v1, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahM:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->leftMode:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    iget-boolean v1, v1, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahN:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahN:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->rightMode:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    invoke-static {v1}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aoK(Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahG:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahF:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0707b3

    :goto_5
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/applicationlock/utils/m;->agi(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahN:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->rightMode:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    invoke-static {v1}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aoJ(Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    const v0, 0x7f0707b2

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agS()V

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agR()V

    goto :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adq:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->ahc(Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->aor()V

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    new-instance v1, Lcom/miui/applicationlock/aq;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/aq;-><init>(Lcom/miui/applicationlock/ChooseAccessControl;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/applicationlock/widget/h;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agR()V

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agR()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agT()V

    goto/16 :goto_4

    :pswitch_4
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    sget-object v1, Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;->adq:Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->ahc(Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->aor()V

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agS()V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eq p2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/miui/applicationlock/ChooseAccessControl;->setResult(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->finish()V

    :cond_1
    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    goto :goto_0

    :sswitch_1
    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->setResult(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->finish()V

    goto :goto_0

    :sswitch_2
    if-ne p2, v1, :cond_6

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahH:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aeq()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0, v1, p3}, Lcom/miui/applicationlock/ChooseAccessControl;->setResult(ILandroid/content/Intent;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ChooseAccessControl"

    const-string/jumbo v1, "password is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0, p3}, Lcom/miui/applicationlock/ChooseAccessControl;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->setResult(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->aou()V

    invoke-super {p0}, Lcom/miui/common/a/d;->finish()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->finish()V

    goto :goto_0

    :sswitch_3
    if-ne p2, v1, :cond_8

    if-eqz p3, :cond_7

    invoke-virtual {p0, v1, p3}, Lcom/miui/applicationlock/ChooseAccessControl;->setResult(ILandroid/content/Intent;)V

    :goto_2
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->finish()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->setResult(I)V

    goto :goto_2

    :cond_8
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "cancel_setting_password"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_0
        0x38 -> :sswitch_1
        0xf98a8 -> :sswitch_2
        0xf98a9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahM:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->leftMode:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->ahY:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahL:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->agR()V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aip:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->leftMode:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->aib:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->leftMode:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;->aia:Lcom/miui/applicationlock/ChooseAccessControl$LeftButtonMode;

    if-ne v0, v1, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahF:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ChooseLockTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "cancel_setting_password"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->setResult(ILandroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->finish()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "ChooseAccessControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "left footer button pressed , but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahN:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "pattern"

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->rightMode:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aif:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aio:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-eq v0, v1, :cond_6

    const-string/jumbo v0, "ChooseAccessControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aif:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->aiq:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aov(Lcom/miui/applicationlock/ChooseAccessControl$Stage;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->rightMode:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aid:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahS:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    if-eq v0, v1, :cond_8

    const-string/jumbo v0, "ChooseAccessControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$Stage;->ail:Lcom/miui/applicationlock/ChooseAccessControl$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aid:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->aot()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->aon()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f0707b8

    const v6, 0x7f0707b1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "appops"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahI:Landroid/app/AppOpsManager;

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahG:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->mBinder:Landroid/os/IBinder;

    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahH:Lcom/miui/applicationlock/utils/e;

    const v0, 0x7f0a0152

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahR:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "passwordType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "pattern"

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "external_app_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahK:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "forgot_password_reset"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "setting_password_reset"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_3

    const-string/jumbo v3, "ModifyPassword"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v3, 0x7f0707b9

    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->setTitle(I)V

    iput-boolean v5, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahF:Z

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aid:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    invoke-virtual {v0, v7}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aoI(I)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aie:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    invoke-virtual {v0, v7}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aoI(I)V

    :goto_0
    const-string/jumbo v0, "pattern"

    iget-object v3, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_1

    const v0, 0x7f0a0153

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Lcom/miui/applicationlock/ap;

    invoke-direct {v2, p0, v1}, Lcom/miui/applicationlock/ap;-><init>(Lcom/miui/applicationlock/ChooseAccessControl;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aop(Ljava/lang/String;)V

    const v0, 0x7f0a0154

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahO:Landroid/widget/TextView;

    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->aie(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->aic()Lcom/miui/applicationlock/widget/h;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahJ:Lcom/miui/applicationlock/utils/n;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->ahb(Lcom/miui/applicationlock/utils/n;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v5}, Lcom/miui/applicationlock/widget/h;->ahd(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    const v1, 0x7f0a0156

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahM:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    const v1, 0x7f0a0157

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahN:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahM:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahN:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahT:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/LinearLayoutWithDefaultTouchRecepient;->aiV(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->aoq()V

    const-string/jumbo v0, "mixed"

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aid:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    invoke-virtual {v0, v6}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aoI(I)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aie:Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;

    invoke-virtual {v0, v6}, Lcom/miui/applicationlock/ChooseAccessControl$RightButtonMode;->aoI(I)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "set_back"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajB(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    const/16 v0, 0x18

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aos(IZ)V

    const/16 v0, 0x2d

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aos(IZ)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    const/16 v0, 0x18

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aos(IZ)V

    const/16 v0, 0x2d

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->aos(IZ)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->ahP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->aop(Ljava/lang/String;)V

    return-void
.end method
