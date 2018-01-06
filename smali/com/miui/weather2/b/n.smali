.class public Lcom/miui/weather2/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/miui/weather2/b/n;

.field public static final b:Lcom/miui/weather2/b/n;

.field public static final c:Lcom/miui/weather2/b/n;

.field public static final d:Lcom/miui/weather2/b/n;

.field public static final e:[Lcom/miui/weather2/b/n;


# instance fields
.field private f:I

.field private g:I

.field private h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const v11, 0x7f020087

    const v10, 0x7f020085

    const v9, 0x7f020083

    const v8, 0x7f020081

    const v7, 0x7f02007f

    new-instance v0, Lcom/miui/weather2/b/n;

    const v1, 0x7f020089

    const v2, 0x7f020084

    const v3, 0x7f02007e

    const v4, 0x7f020080

    const v5, 0x7f020082

    const v6, 0x7f020086

    invoke-direct/range {v0 .. v6}, Lcom/miui/weather2/b/n;-><init>(IIIIII)V

    sput-object v0, Lcom/miui/weather2/b/n;->a:Lcom/miui/weather2/b/n;

    new-instance v0, Lcom/miui/weather2/b/n;

    const v1, 0x7f02008a

    move v2, v10

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/miui/weather2/b/n;-><init>(IIIIII)V

    sput-object v0, Lcom/miui/weather2/b/n;->b:Lcom/miui/weather2/b/n;

    new-instance v0, Lcom/miui/weather2/b/n;

    const v1, 0x7f02008a

    move v2, v10

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/miui/weather2/b/n;-><init>(IIIIII)V

    sput-object v0, Lcom/miui/weather2/b/n;->c:Lcom/miui/weather2/b/n;

    new-instance v0, Lcom/miui/weather2/b/n;

    const v1, 0x7f02008a

    move v2, v10

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/miui/weather2/b/n;-><init>(IIIIII)V

    sput-object v0, Lcom/miui/weather2/b/n;->d:Lcom/miui/weather2/b/n;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/weather2/b/n;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/weather2/b/n;->a:Lcom/miui/weather2/b/n;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/miui/weather2/b/n;->b:Lcom/miui/weather2/b/n;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/miui/weather2/b/n;->c:Lcom/miui/weather2/b/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/weather2/b/n;->e:[Lcom/miui/weather2/b/n;

    return-void
.end method

.method private constructor <init>(IIIIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/weather2/b/n;->h:[I

    iput p1, p0, Lcom/miui/weather2/b/n;->g:I

    iput p6, p0, Lcom/miui/weather2/b/n;->f:I

    iget-object v0, p0, Lcom/miui/weather2/b/n;->h:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/n;->h:[I

    const/4 v1, 0x1

    aput p3, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/n;->h:[I

    const/4 v1, 0x2

    aput p4, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/b/n;->h:[I

    const/4 v1, 0x3

    aput p5, v0, v1

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/b/n;->f:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/b/n;->g:I

    return v0
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/n;->h:[I

    return-object v0
.end method
