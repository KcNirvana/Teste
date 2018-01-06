.class public Lcom/miui/weather2/b/e;
.super Lcom/miui/weather2/b/a;
.source "SourceFile"


# static fields
.field public static s:Lcom/miui/weather2/b/e;

.field public static t:Lcom/miui/weather2/b/e;

.field public static final u:[Lcom/miui/weather2/b/e;


# instance fields
.field private v:[I

.field private w:[I

.field private x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/miui/weather2/b/e;

    const v1, 0x7f020044

    const v2, 0x7f020047

    const v3, 0x7f020049

    const v4, 0x7f020050

    const v5, 0x7f02004e

    const v6, 0x7f020058

    const v7, 0x7f020056

    const v8, 0x7f02005c

    const v9, 0x7f02005a

    const v10, 0x7f020054

    const v11, 0x7f020052

    invoke-direct/range {v0 .. v11}, Lcom/miui/weather2/b/e;-><init>(IIIIIIIIIII)V

    sput-object v0, Lcom/miui/weather2/b/e;->s:Lcom/miui/weather2/b/e;

    new-instance v0, Lcom/miui/weather2/b/e;

    const v1, 0x7f02004d

    const v2, 0x7f020048

    const v3, 0x7f02004a

    const v4, 0x7f020051

    const v5, 0x7f02004f

    const v6, 0x7f020059

    const v7, 0x7f020057

    const v8, 0x7f02005d

    const v9, 0x7f02005b

    const v10, 0x7f020055

    const v11, 0x7f020053

    invoke-direct/range {v0 .. v11}, Lcom/miui/weather2/b/e;-><init>(IIIIIIIIIII)V

    sput-object v0, Lcom/miui/weather2/b/e;->t:Lcom/miui/weather2/b/e;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/weather2/b/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/weather2/b/e;->s:Lcom/miui/weather2/b/e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/miui/weather2/b/e;->t:Lcom/miui/weather2/b/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/weather2/b/e;->u:[Lcom/miui/weather2/b/e;

    return-void
.end method

.method private constructor <init>(IIIIIIIIIII)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/weather2/b/a;-><init>(III)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/b/e;->v:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/b/e;->w:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/b/e;->x:[I

    iget-object v0, p0, Lcom/miui/weather2/b/e;->w:[I

    const/4 v1, 0x0

    aput p4, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->x:[I

    const/4 v1, 0x0

    aput p5, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->w:[I

    const/4 v1, 0x1

    aput p6, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->x:[I

    const/4 v1, 0x1

    aput p7, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->w:[I

    const/4 v1, 0x2

    aput p8, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->x:[I

    const/4 v1, 0x2

    aput p9, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->w:[I

    const/4 v1, 0x3

    aput p10, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->x:[I

    const/4 v1, 0x3

    aput p11, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->v:[I

    const/4 v1, 0x0

    const v2, 0x7f020045

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->v:[I

    const/4 v1, 0x1

    const v2, 0x7f02004b

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->v:[I

    const/4 v1, 0x2

    const v2, 0x7f02004c

    aput v2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->v:[I

    const/4 v1, 0x3

    const v2, 0x7f020046

    aput v2, v0, v1

    return-void
.end method


# virtual methods
.method public f()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/b/e;->p:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/b/e;->q:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/b/e;->r:I

    return v0
.end method

.method public i()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->w:[I

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->x:[I

    return-object v0
.end method

.method public k()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/e;->v:[I

    return-object v0
.end method
