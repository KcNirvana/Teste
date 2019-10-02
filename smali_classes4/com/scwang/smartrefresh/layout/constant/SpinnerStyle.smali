.class public Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;
.super Ljava/lang/Object;
.source "SpinnerStyle.java"


# static fields
.field public static final FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

.field public static final FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

.field public static final MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

.field public static final Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

.field public static final Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

.field public static final values:[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;-><init>(I)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;-><init>(I)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;-><init>(I)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;-><init>(I)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;-><init>(I)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    aput-object v6, v0, v1

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->ordinal:I

    return-void
.end method
