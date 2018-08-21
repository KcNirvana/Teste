.class public Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/a;
.source "QwertyKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;,
        Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;
    }
.end annotation


# instance fields
.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

.field private f:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

.field private g:[Landroid/widget/TextView;

.field private h:[Landroid/widget/TextView;

.field private i:[Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private final k:[Ljava/lang/String;

.field private final l:[Ljava/lang/String;

.field private final m:[Ljava/lang/String;

.field private final n:[Ljava/lang/String;

.field private final o:[Ljava/lang/String;

.field private final p:[Ljava/lang/String;

.field private final q:[Ljava/lang/String;

.field private final r:[Ljava/lang/String;

.field private final s:[Ljava/lang/String;

.field private final t:[Ljava/lang/String;

.field private final u:[Ljava/lang/String;

.field private final v:[Ljava/lang/String;

.field private w:Landroid/widget/FrameLayout;

.field private x:D

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/g;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/a;-><init>()V

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->e:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->g:[Landroid/widget/TextView;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->h:[Landroid/widget/TextView;

    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->i:[Landroid/widget/TextView;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "q"

    aput-object v1, v0, v3

    const-string/jumbo v1, "w"

    aput-object v1, v0, v5

    const-string/jumbo v1, "e"

    aput-object v1, v0, v6

    const-string/jumbo v1, "r"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "u"

    aput-object v2, v0, v1

    const-string/jumbo v1, "i"

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "p"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->k:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "a"

    aput-object v1, v0, v3

    const-string/jumbo v1, "s"

    aput-object v1, v0, v5

    const-string/jumbo v1, "d"

    aput-object v1, v0, v6

    const-string/jumbo v1, "f"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "g"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "h"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "j"

    aput-object v2, v0, v1

    const-string/jumbo v1, "k"

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const-string/jumbo v2, "l"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->l:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "z"

    aput-object v1, v0, v3

    const-string/jumbo v1, "x"

    aput-object v1, v0, v5

    const-string/jumbo v1, "c"

    aput-object v1, v0, v6

    const-string/jumbo v1, "v"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "n"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "m"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->m:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Q"

    aput-object v1, v0, v3

    const-string/jumbo v1, "W"

    aput-object v1, v0, v5

    const-string/jumbo v1, "E"

    aput-object v1, v0, v6

    const-string/jumbo v1, "R"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const-string/jumbo v1, "I"

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->n:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "A"

    aput-object v1, v0, v3

    const-string/jumbo v1, "S"

    aput-object v1, v0, v5

    const-string/jumbo v1, "D"

    aput-object v1, v0, v6

    const-string/jumbo v1, "F"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const-string/jumbo v1, "K"

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->o:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "Z"

    aput-object v1, v0, v3

    const-string/jumbo v1, "X"

    aput-object v1, v0, v5

    const-string/jumbo v1, "C"

    aput-object v1, v0, v6

    const-string/jumbo v1, "V"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->p:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "3"

    aput-object v1, v0, v6

    const-string/jumbo v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const-string/jumbo v1, "8"

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->q:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "~"

    aput-object v1, v0, v3

    const-string/jumbo v1, "!"

    aput-object v1, v0, v5

    const-string/jumbo v1, "@"

    aput-object v1, v0, v6

    const-string/jumbo v1, "#"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "%"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "&"

    aput-object v2, v0, v1

    const-string/jumbo v1, "*"

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const-string/jumbo v2, "?"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->r:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "("

    aput-object v1, v0, v3

    const-string/jumbo v1, ")"

    aput-object v1, v0, v5

    const-string/jumbo v1, "-"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->s:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "3"

    aput-object v1, v0, v6

    const-string/jumbo v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const-string/jumbo v1, "8"

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->t:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "<"

    aput-object v1, v0, v3

    const-string/jumbo v1, ">"

    aput-object v1, v0, v5

    const-string/jumbo v1, "+"

    aput-object v1, v0, v6

    const-string/jumbo v1, "="

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "\u00f7"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "^"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "`"

    aput-object v2, v0, v1

    const-string/jumbo v1, "["

    aput-object v1, v0, v4

    const/16 v1, 0x8

    const-string/jumbo v2, "]"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->u:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "\\"

    aput-object v1, v0, v3

    const-string/jumbo v1, "|"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\""

    aput-object v1, v0, v6

    const-string/jumbo v1, "$"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "\uffe5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->v:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->x:D

    iput v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->b:Lcom/alipay/android/app/safepaybase/alikeyboard/g;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "keyboard_qwerty"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->w:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const-wide v4, 0x4050400000000000L    # 65.0

    mul-double/2addr v4, v0

    double-to-int v3, v4

    const-wide v4, 0x4053800000000000L    # 78.0

    mul-double/2addr v4, v0

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    sub-int v0, v3, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const-string/jumbo v1, "keyborad_show"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->w:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->w:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->w:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    iget-wide v6, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v1, v3

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    iget-wide v6, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;)V
    .locals 7

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "keyboard_key_shift_up"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->k:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->l:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->m:[Ljava/lang/String;

    :goto_0
    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->g:[Landroid/widget/TextView;

    array-length v5, v5

    if-lt v3, v5, :cond_4

    move v2, v4

    :goto_2
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->h:[Landroid/widget/TextView;

    array-length v3, v3

    if-lt v2, v3, :cond_5

    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->i:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v4, v1, :cond_6

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "keyboard_key_shift_down"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->n:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->o:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->p:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->q:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->r:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->s:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "#+="

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->t:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->u:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->v:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->g:[Landroid/widget/TextView;

    aget-object v5, v5, v3

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->h:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->i:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "key_enter"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->x:D

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v0, :cond_c

    :goto_0
    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    iget-wide v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    iget-wide v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    const-wide v4, 0x3ff7333333333333L    # 1.45

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    iget-wide v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-int v7, v2

    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    iget-wide v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    iget-wide v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v8, v0, 0x2

    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    mul-int/lit8 v9, v0, 0x4

    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    add-int v10, v0, v8

    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    int-to-double v0, v0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-nez v5, :cond_3

    new-array v1, v11, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->g:[Landroid/widget/TextView;

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v11, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    iget v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    invoke-virtual {v2, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v4, Lcom/alipay/android/app/safepaybase/alikeyboard/h;

    invoke-direct {v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/h;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->g:[Landroid/widget/TextView;

    aput-object v2, v1, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    if-ne v5, v1, :cond_4

    new-array v1, v11, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->h:[Landroid/widget/TextView;

    const/4 v1, 0x0

    move v3, v1

    :goto_3
    if-ge v3, v11, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x0

    iget v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    invoke-virtual {v2, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v4, Lcom/alipay/android/app/safepaybase/alikeyboard/h;

    invoke-direct {v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/h;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->h:[Landroid/widget/TextView;

    aput-object v2, v1, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    if-ne v5, v1, :cond_7

    add-int/lit8 v1, v11, -0x2

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->i:[Landroid/widget/TextView;

    const/4 v1, 0x0

    move v4, v1

    :goto_4
    if-ge v4, v11, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v4, :cond_5

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    :goto_5
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v11, -0x1

    if-ne v4, v3, :cond_6

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_5

    :cond_6
    iget v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v12, 0x0

    iget v13, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    invoke-virtual {v3, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v12, Lcom/alipay/android/app/safepaybase/alikeyboard/h;

    invoke-direct {v12}, Lcom/alipay/android/app/safepaybase/alikeyboard/h;-><init>()V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->i:[Landroid/widget/TextView;

    add-int/lit8 v13, v4, -0x1

    aput-object v3, v12, v13

    iget v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    move v4, v1

    :goto_6
    if-ge v4, v11, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/h;

    invoke-direct {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/h;-><init>()V

    invoke-virtual {v3, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v4, :cond_8

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->d:Landroid/widget/TextView;

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    const/4 v12, 0x0

    iget v13, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    invoke-virtual {v2, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_7
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_6

    :cond_8
    const/4 v2, 0x1

    if-ne v4, v2, :cond_9

    iget v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v2, v3

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v12, 0x0

    iget v13, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    invoke-virtual {v2, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_7

    :cond_9
    const/4 v2, 0x2

    if-ne v4, v2, :cond_a

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v2, v3

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v12, 0x0

    iget v13, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    invoke-virtual {v2, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_7

    :cond_a
    const/4 v2, 0x3

    if-ne v4, v2, :cond_b

    iget v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->y:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v2, v3

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v12, 0x0

    iget v13, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    invoke-virtual {v2, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_7

    :cond_b
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    const/4 v12, 0x0

    iget v13, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->z:F

    invoke-virtual {v2, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_7

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method private b(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "key_del1"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->b()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v1, "key_enter"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "key_space"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "key_ABC"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->down:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    :goto_1
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->e:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "key_123"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->e:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    :goto_2
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->e:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->e:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$ShiftType;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    goto :goto_2

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->b(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
