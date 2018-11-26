.class public Lcom/miui/securitycenter/utils/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final aXA:[I

.field protected static final aXB:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/miui/securitycenter/utils/c;->aXB:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/miui/securitycenter/utils/c;->aXA:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bqF(FII)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v2, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [F

    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([FF)V

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-static {v1, p1}, Lcom/miui/securitycenter/utils/c;->bqG(Landroid/graphics/drawable/shapes/RoundRectShape;I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-static {v1, p2}, Lcom/miui/securitycenter/utils/c;->bqG(Landroid/graphics/drawable/shapes/RoundRectShape;I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v3, Lcom/miui/securitycenter/utils/c;->aXB:[I

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/miui/securitycenter/utils/c;->aXA:[I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private static bqG(Landroid/graphics/drawable/shapes/RoundRectShape;I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method
