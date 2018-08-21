.class public Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/a;
.source "SecureQwertyKeyboard.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;,
        Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;
    }
.end annotation


# static fields
.field private static final H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:D

.field private B:I

.field private C:F

.field private D:Landroid/content/Context;

.field private E:Landroid/speech/tts/TextToSpeech;

.field private F:Landroid/view/accessibility/AccessibilityManager;

.field private G:Z

.field c:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;

.field d:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

.field private i:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

.field private j:[Landroid/widget/TextView;

.field private k:[Landroid/widget/TextView;

.field private l:[Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private final n:[Ljava/lang/String;

.field private final o:[Ljava/lang/String;

.field private final p:[Ljava/lang/String;

.field private final q:[Ljava/lang/String;

.field private final r:[Ljava/lang/String;

.field private final s:[Ljava/lang/String;

.field private final t:[Ljava/lang/String;

.field private final u:[Ljava/lang/String;

.field private final v:[Ljava/lang/String;

.field private final w:[Ljava/lang/String;

.field private final x:[Ljava/lang/String;

.field private final y:[Ljava/lang/String;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;

    invoke-direct {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$3;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->H:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/g;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/a;-><init>()V

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->h:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->i:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->j:[Landroid/widget/TextView;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->k:[Landroid/widget/TextView;

    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->l:[Landroid/widget/TextView;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->n:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->o:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->p:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->q:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->r:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->s:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->t:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->u:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->v:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->w:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->x:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->y:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->A:D

    iput v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->C:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->E:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->F:Landroid/view/accessibility/AccessibilityManager;

    iput-boolean v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->G:Z

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/m;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->c:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/n;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->d:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    iput-object p3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->b:Lcom/alipay/android/app/safepaybase/alikeyboard/g;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "keyboard_secure_qwerty"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->z:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->d()V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getId()I

    move-result v0

    const-string/jumbo v1, "key_del1"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const-string/jumbo v1, "msp_secure_keyboard_del"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const-string/jumbo v1, "msp_secure_keyboard_already_del"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "key_space"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const-string/jumbo v1, "msp_secure_keyboard_space"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "key_ABC"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const-string/jumbo v1, "msp_secure_keyboard_shift"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "key_enter"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const-string/jumbo v1, "msp_secure_keyboard_compelete"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->m:Landroid/widget/TextView;

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

    iget v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    sub-int v0, v3, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->m:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->m:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->m:Landroid/widget/TextView;

    const-string/jumbo v1, "keyborad_show"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->m:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->m:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->z:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->z:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V
    .locals 7

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "keyboard_key_shift_up"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->n:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->o:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->p:[Ljava/lang/String;

    :goto_0
    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->j:[Landroid/widget/TextView;

    array-length v5, v5

    if-lt v3, v5, :cond_4

    move v2, v4

    :goto_2
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->k:[Landroid/widget/TextView;

    array-length v3, v3

    if-lt v2, v3, :cond_5

    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->l:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v4, v1, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->b(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "keyboard_key_shift_down"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->q:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->r:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->s:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->C:F

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->t:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->u:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->v:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "#+="

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->w:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->x:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->y:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->j:[Landroid/widget/TextView;

    aget-object v5, v5, v3

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->k:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->l:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->E:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->G:Z

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "key_enter"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->c()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->m:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->G:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->g:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->A:D

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

    if-le v1, v0, :cond_d

    :goto_0
    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    iget-wide v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->A:D

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-int v1, v2

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    iget-wide v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->A:D

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    const-wide v4, 0x3ff7333333333333L    # 1.45

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    iget-wide v8, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->A:D

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    double-to-int v7, v2

    iget v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    iget-wide v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->A:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    iget-wide v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->A:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v8, v0, 0x2

    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    mul-int/lit8 v9, v0, 0x4

    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    add-int v10, v0, v8

    iget v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    int-to-double v0, v0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->C:F

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a:Landroid/view/ViewGroup;

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

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->j:[Landroid/widget/TextView;

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v11, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    const/4 v4, 0x0

    iget v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->C:F

    invoke-virtual {v2, v4, v12}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setTextSize(IF)V

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->j:[Landroid/widget/TextView;

    aput-object v2, v4, v3

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->c:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->d:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    if-ne v5, v1, :cond_4

    new-array v1, v11, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->k:[Landroid/widget/TextView;

    const/4 v1, 0x0

    move v4, v1

    :goto_3
    if-ge v4, v11, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    const/4 v3, 0x0

    iget v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->C:F

    invoke-virtual {v2, v3, v12}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setTextSize(IF)V

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v12, 0x0

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->k:[Landroid/widget/TextView;

    aput-object v2, v3, v4

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->c:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->d:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    if-ne v5, v1, :cond_7

    add-int/lit8 v1, v11, -0x2

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->l:[Landroid/widget/TextView;

    const/4 v1, 0x0

    move v4, v1

    :goto_4
    if-ge v4, v11, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v4, :cond_5

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e:Landroid/widget/FrameLayout;

    :goto_5
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->d:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v11, -0x1

    if-ne v4, v3, :cond_6

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->g:Landroid/view/View;

    goto :goto_5

    :cond_6
    iget v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    const/4 v12, 0x0

    iget v13, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->C:F

    invoke-virtual {v3, v12, v13}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setTextSize(IF)V

    new-instance v12, Lcom/alipay/android/app/safepaybase/alikeyboard/h;

    invoke-direct {v12}, Lcom/alipay/android/app/safepaybase/alikeyboard/h;-><init>()V

    invoke-virtual {v3, v12}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->l:[Landroid/widget/TextView;

    add-int/lit8 v13, v4, -0x1

    aput-object v3, v12, v13

    iget-object v12, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->c:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;

    invoke-virtual {v3, v12}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;)V

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    move v4, v1

    :goto_6
    if-ge v4, v11, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v4, :cond_9

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v2, v3

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->f:Landroid/widget/TextView;

    :goto_7
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    instance-of v1, v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    if-eqz v1, :cond_8

    check-cast v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->d:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->C:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    instance-of v2, v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    if-eqz v2, :cond_8

    check-cast v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->c:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;)V

    :cond_8
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_6

    :cond_9
    const/4 v2, 0x1

    if-ne v4, v2, :cond_a

    iget v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_a
    const/4 v2, 0x2

    if-ne v4, v2, :cond_b

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_b
    const/4 v2, 0x3

    if-ne v4, v2, :cond_c

    iget v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->B:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_c
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method private b(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->G:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const-string/jumbo v1, "msp_secure_keyboard_type_lowercase_letter"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->F:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->E:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const-string/jumbo v1, "msp_secure_keyboard_type_uppercase_letter"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const-string/jumbo v1, "msp_secure_keyboard_type_digital_sign"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const-string/jumbo v1, "msp_secure_keyboard_type_special_sign"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->b()V

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

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "key_ABC"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->i:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->down:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    :goto_1
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->i:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->h:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->i:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "key_123"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->h:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    :goto_2
    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->h:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->i:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->h:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->i:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$ShiftType;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard$QwertType;

    goto :goto_2

    :cond_6
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->F:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->F:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->E:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->D:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->F:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/o;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/o;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->E:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method private e()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    const-string/jumbo v0, "Secure|abc"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/a;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInit(I)V
    .locals 2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->E:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->E:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->G:Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->E:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_0
.end method

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

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->b(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
