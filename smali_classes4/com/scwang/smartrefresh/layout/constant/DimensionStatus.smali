.class public Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;
.super Ljava/lang/Object;
.source "DimensionStatus.java"


# static fields
.field public static final CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final CodeExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final DeadLock:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final DeadLockUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final Default:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlLayout:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlWrap:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final values:[Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;


# instance fields
.field public final notified:Z

.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->Default:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v2}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrap:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v6, 0x5

    invoke-direct {v0, v6, v2}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v7, 0x6

    invoke-direct {v0, v7, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v8, 0x7

    invoke-direct {v0, v8, v2}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayout:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v9, 0x8

    invoke-direct {v0, v9, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v10, 0x9

    invoke-direct {v0, v10, v2}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v11, 0xa

    invoke-direct {v0, v11, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DeadLockUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-direct {v0, v11, v2}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DeadLock:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v12, v0, v1

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->Default:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrap:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayout:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DeadLockUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v1, v0, v11

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DeadLock:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->values:[Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    return-void
.end method


# virtual methods
.method public canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z
    .locals 2

    iget v0, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    iget v1, p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    if-ne v0, p0, :cond_1

    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    iget p1, p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public notified()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->values:[Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method

.method public unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->values:[Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    return-object v0

    :cond_1
    return-object p0
.end method
