.class Lcom/miui/weather2/view/LineWrapLayout$a;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/view/LineWrapLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static a(IIII)Lcom/miui/weather2/view/LineWrapLayout$a;
    .locals 1

    new-instance v0, Lcom/miui/weather2/view/LineWrapLayout$a;

    invoke-direct {v0}, Lcom/miui/weather2/view/LineWrapLayout$a;-><init>()V

    iput p0, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->a:I

    iput p1, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->b:I

    iput p2, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->c:I

    iput p3, v0, Lcom/miui/weather2/view/LineWrapLayout$a;->d:I

    return-object v0
.end method
