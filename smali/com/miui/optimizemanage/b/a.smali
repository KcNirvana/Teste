.class public Lcom/miui/optimizemanage/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final yO:Ljava/util/Comparator;

.field private static final ya:[I

.field private static final yb:[I

.field private static final yc:[I

.field private static final yd:[I


# instance fields
.field private final yA:[J

.field private final yB:[Ljava/lang/String;

.field private final yC:[J

.field private yD:I

.field private yE:I

.field private yF:I

.field private yG:I

.field private yH:Z

.field private yI:I

.field private yJ:I

.field private final yK:[J

.field private final yL:[J

.field private final yM:Ljava/util/ArrayList;

.field private yN:Z

.field private ye:J

.field private yf:J

.field private yg:J

.field private yh:J

.field private yi:J

.field private yj:J

.field private yk:[B

.field private yl:[I

.field private ym:[I

.field private yn:J

.field private yo:J

.field private yp:Z

.field private final yq:Z

.field private yr:Z

.field private ys:J

.field private yt:J

.field private yu:J

.field private yv:F

.field private yw:F

.field private yx:F

.field private final yy:[F

.field private final yz:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x4020

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/optimizemanage/b/a;->yc:[I

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/optimizemanage/b/a;->yb:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/optimizemanage/b/a;->yd:[I

    filled-new-array {v1, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/miui/optimizemanage/b/a;->ya:[I

    new-instance v0, Lcom/miui/optimizemanage/b/f;

    invoke-direct {v0}, Lcom/miui/optimizemanage/b/f;-><init>()V

    sput-object v0, Lcom/miui/optimizemanage/b/a;->yO:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 7

    const/4 v5, 0x4

    const/4 v4, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [J

    iput-object v0, p0, Lcom/miui/optimizemanage/b/a;->yC:[J

    new-array v0, v5, [J

    iput-object v0, p0, Lcom/miui/optimizemanage/b/a;->yK:[J

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/optimizemanage/b/a;->yB:[Ljava/lang/String;

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/miui/optimizemanage/b/a;->yA:[J

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/miui/optimizemanage/b/a;->yL:[J

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/optimizemanage/b/a;->yy:[F

    iput-boolean v2, p0, Lcom/miui/optimizemanage/b/a;->yr:Z

    iput v1, p0, Lcom/miui/optimizemanage/b/a;->yv:F

    iput v1, p0, Lcom/miui/optimizemanage/b/a;->yx:F

    iput v1, p0, Lcom/miui/optimizemanage/b/a;->yw:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/b/a;->yz:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/b/a;->yM:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/miui/optimizemanage/b/a;->yp:Z

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/optimizemanage/b/a;->yk:[B

    iput-boolean p1, p0, Lcom/miui/optimizemanage/b/a;->yq:Z

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/miui/optimizemanage/b/a;->ys:J

    :try_start_0
    const-string/jumbo v0, "android.system.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "_SC_CLK_TCK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const-string/jumbo v1, "libcore.io.Libcore"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "os"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "sysconf"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v0, v2, v0

    iput-wide v0, p0, Lcom/miui/optimizemanage/b/a;->ys:J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ProcessCpuTracker"

    const-string/jumbo v2, "ProcessCpuTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ProcessCpuTracker"

    const-string/jumbo v2, "ProcessCpuTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "ProcessCpuTracker"

    const-string/jumbo v2, "ProcessCpuTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "ProcessCpuTracker"

    const-string/jumbo v2, "ProcessCpuTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "ProcessCpuTracker"

    const-string/jumbo v2, "ProcessCpuTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private Ah(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/b/e;->At(Ljava/lang/String;[I)[I

    move-result-object v13

    if-nez v13, :cond_1

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_0

    aget v4, v13, v9

    if-gez v4, :cond_2

    :cond_0
    :goto_2
    if-ge v3, v11, :cond_12

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizemanage/b/b;

    const/4 v4, 0x0

    iput v4, v2, Lcom/miui/optimizemanage/b/b;->zd:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/miui/optimizemanage/b/b;->zb:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/miui/optimizemanage/b/b;->za:I

    const/4 v4, 0x0

    iput v4, v2, Lcom/miui/optimizemanage/b/b;->yZ:I

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/miui/optimizemanage/b/b;->ze:Z

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/miui/optimizemanage/b/b;->zk:Z

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_1
    array-length v2, v13

    move v8, v2

    goto :goto_0

    :cond_2
    if-ge v3, v11, :cond_3

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizemanage/b/b;

    move-object v12, v2

    :goto_3
    if-eqz v12, :cond_a

    iget v2, v12, Lcom/miui/optimizemanage/b/b;->pid:I

    if-ne v2, v4, :cond_a

    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->yP:Z

    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->zk:Z

    add-int/lit8 v10, v3, 0x1

    iget-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->yX:Z

    if-eqz v2, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/optimizemanage/b/a;->yC:[J

    iget-object v3, v12, Lcom/miui/optimizemanage/b/b;->zg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/miui/optimizemanage/b/a;->yc:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v2, v7}, Lcom/miui/optimizemanage/b/e;->As(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v9

    move v3, v10

    move v4, v11

    :goto_4
    add-int/lit8 v9, v2, 0x1

    move v11, v4

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move-object v12, v2

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    aget-wide v16, v2, v3

    const/4 v3, 0x1

    aget-wide v18, v2, v3

    const/4 v3, 0x2

    aget-wide v6, v2, v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    move-wide/from16 v20, v0

    mul-long v20, v20, v6

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    mul-long v22, v2, v6

    iget-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yV:J

    cmp-long v2, v20, v2

    if-nez v2, :cond_6

    iget-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yT:J

    cmp-long v2, v22, v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->zd:I

    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->zb:I

    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->za:I

    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->yZ:I

    iget-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->active:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->active:Z

    :cond_5
    move v2, v9

    move v3, v10

    move v4, v11

    goto :goto_4

    :cond_6
    iget-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->active:Z

    if-nez v2, :cond_7

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->active:Z

    :cond_7
    if-gez p2, :cond_8

    iget-object v2, v12, Lcom/miui/optimizemanage/b/b;->yW:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/miui/optimizemanage/b/a;->Aj(Lcom/miui/optimizemanage/b/b;Ljava/lang/String;)V

    iget-object v2, v12, Lcom/miui/optimizemanage/b/b;->zh:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    iget-object v3, v12, Lcom/miui/optimizemanage/b/b;->zi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/optimizemanage/b/a;->ym:[I

    iget-object v7, v12, Lcom/miui/optimizemanage/b/b;->zh:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/optimizemanage/b/a;->Ah(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/optimizemanage/b/a;->ym:[I

    :cond_8
    iget-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yU:J

    sub-long v2, v14, v2

    iput-wide v2, v12, Lcom/miui/optimizemanage/b/b;->zc:J

    iput-wide v14, v12, Lcom/miui/optimizemanage/b/b;->yU:J

    iget-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yV:J

    sub-long v2, v20, v2

    long-to-int v2, v2

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->zd:I

    iget-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yT:J

    sub-long v2, v22, v2

    long-to-int v2, v2

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->zb:I

    move-wide/from16 v0, v20

    iput-wide v0, v12, Lcom/miui/optimizemanage/b/b;->yV:J

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/miui/optimizemanage/b/b;->yT:J

    iget-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yS:J

    sub-long v2, v16, v2

    long-to-int v2, v2

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->za:I

    iget-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yR:J

    sub-long v2, v18, v2

    long-to-int v2, v2

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->yZ:I

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/miui/optimizemanage/b/b;->yS:J

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/miui/optimizemanage/b/b;->yR:J

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->zk:Z

    :cond_9
    move v2, v9

    move v3, v10

    move v4, v11

    goto/16 :goto_4

    :cond_a
    if-eqz v12, :cond_b

    iget v2, v12, Lcom/miui/optimizemanage/b/b;->pid:I

    if-le v2, v4, :cond_11

    :cond_b
    new-instance v12, Lcom/miui/optimizemanage/b/b;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/optimizemanage/b/a;->yq:Z

    move/from16 v0, p2

    invoke-direct {v12, v4, v0, v2}, Lcom/miui/optimizemanage/b/b;-><init>(IIZ)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v3, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/optimizemanage/b/a;->yB:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/optimizemanage/b/a;->yA:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v12, Lcom/miui/optimizemanage/b/b;->yU:J

    iget-object v5, v12, Lcom/miui/optimizemanage/b/b;->zg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/miui/optimizemanage/b/a;->yb:[I

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v3, v7}, Lcom/miui/optimizemanage/b/e;->As(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x6

    aget-wide v6, v3, v5

    iput-wide v6, v12, Lcom/miui/optimizemanage/b/b;->zj:J

    iget v5, v12, Lcom/miui/optimizemanage/b/b;->uid:I

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/miui/optimizemanage/b/b;->yX:Z

    :cond_c
    const/4 v5, 0x0

    aget-object v2, v2, v5

    iput-object v2, v12, Lcom/miui/optimizemanage/b/b;->yQ:Ljava/lang/String;

    const/4 v2, 0x1

    aget-wide v6, v3, v2

    iput-wide v6, v12, Lcom/miui/optimizemanage/b/b;->yS:J

    const/4 v2, 0x2

    aget-wide v6, v3, v2

    iput-wide v6, v12, Lcom/miui/optimizemanage/b/b;->yR:J

    const/4 v2, 0x3

    aget-wide v6, v3, v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    mul-long/2addr v6, v14

    iput-wide v6, v12, Lcom/miui/optimizemanage/b/b;->yV:J

    const/4 v2, 0x4

    aget-wide v6, v3, v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    mul-long/2addr v6, v14

    iput-wide v6, v12, Lcom/miui/optimizemanage/b/b;->yT:J

    const/4 v2, 0x5

    aget-wide v2, v3, v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    mul-long/2addr v2, v6

    iput-wide v2, v12, Lcom/miui/optimizemanage/b/b;->zf:J

    :goto_5
    if-gez p2, :cond_10

    iget-object v2, v12, Lcom/miui/optimizemanage/b/b;->yW:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/miui/optimizemanage/b/a;->Aj(Lcom/miui/optimizemanage/b/b;Ljava/lang/String;)V

    iget-object v2, v12, Lcom/miui/optimizemanage/b/b;->zh:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    iget-object v3, v12, Lcom/miui/optimizemanage/b/b;->zi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/optimizemanage/b/a;->ym:[I

    iget-object v7, v12, Lcom/miui/optimizemanage/b/b;->zh:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/optimizemanage/b/a;->Ah(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/optimizemanage/b/a;->ym:[I

    :cond_d
    :goto_6
    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->zd:I

    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->zb:I

    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->za:I

    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->yZ:I

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->yP:Z

    if-nez p3, :cond_e

    iget-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->yX:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->zk:Z

    :cond_e
    move v2, v9

    move v3, v10

    move v4, v11

    goto/16 :goto_4

    :cond_f
    const-string/jumbo v2, "ProcessCpuTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skipping unknown process pid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "<unknown>"

    iput-object v2, v12, Lcom/miui/optimizemanage/b/b;->yQ:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yT:J

    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yV:J

    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yR:J

    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lcom/miui/optimizemanage/b/b;->yS:J

    goto :goto_5

    :cond_10
    iget-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->yX:Z

    if-eqz v2, :cond_d

    iget-object v2, v12, Lcom/miui/optimizemanage/b/b;->yQ:Ljava/lang/String;

    iput-object v2, v12, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    iget-object v2, v12, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/optimizemanage/b/a;->Am(Ljava/lang/String;)I

    move-result v2

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->yY:I

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->zd:I

    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->zb:I

    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->za:I

    const/4 v2, 0x0

    iput v2, v12, Lcom/miui/optimizemanage/b/b;->yZ:I

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->ze:Z

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/miui/optimizemanage/b/b;->zk:Z

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v11, -0x1

    add-int/lit8 v2, v9, -0x1

    goto/16 :goto_4

    :cond_12
    return-object v13
.end method

.method private Aj(Lcom/miui/optimizemanage/b/b;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    const-string/jumbo v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    const-string/jumbo v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0, p2, v3}, Lcom/miui/optimizemanage/b/a;->An(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/miui/optimizemanage/b/b;->yQ:Ljava/lang/String;

    :cond_2
    iget-object v1, p1, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_3
    iput-object v0, p1, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/optimizemanage/b/b;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/b/a;->Am(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/miui/optimizemanage/b/b;->yY:I

    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private An(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/miui/optimizemanage/b/a;->yk:[B

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    if-lez v4, :cond_2

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v5, p0, Lcom/miui/optimizemanage/b/a;->yk:[B

    aget-byte v5, v5, v2

    if-ne v5, p2, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/optimizemanage/b/a;->yk:[B

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public final Ai()I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b/a;->yz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final Ak(I)Lcom/miui/optimizemanage/b/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/b/a;->yz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/b/b;

    return-object v0
.end method

.method public Al(FFF)V
    .locals 0

    return-void
.end method

.method public Am(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizemanage/b/a;->yp:Z

    invoke-virtual {p0}, Lcom/miui/optimizemanage/b/a;->update()V

    return-void
.end method

.method public update()V
    .locals 22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/optimizemanage/b/a;->yL:[J

    const-string/jumbo v9, "/proc/stat"

    sget-object v10, Lcom/miui/optimizemanage/b/a;->yd:[I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v8, v12}, Lcom/miui/optimizemanage/b/e;->As(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    aget-wide v10, v8, v9

    const/4 v9, 0x1

    aget-wide v12, v8, v9

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    mul-long/2addr v10, v12

    const/4 v9, 0x2

    aget-wide v12, v8, v9

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    mul-long/2addr v12, v14

    const/4 v9, 0x3

    aget-wide v14, v8, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    const/4 v9, 0x4

    aget-wide v16, v8, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    const/4 v9, 0x5

    aget-wide v18, v8, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    const/4 v9, 0x6

    aget-wide v8, v8, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->ys:J

    move-wide/from16 v20, v0

    mul-long v8, v8, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->yj:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/optimizemanage/b/a;->yJ:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->yi:J

    move-wide/from16 v20, v0

    sub-long v20, v12, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/optimizemanage/b/a;->yI:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->yf:J

    move-wide/from16 v20, v0

    sub-long v20, v16, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/optimizemanage/b/a;->yE:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->yg:J

    move-wide/from16 v20, v0

    sub-long v20, v18, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/optimizemanage/b/a;->yF:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->yh:J

    move-wide/from16 v20, v0

    sub-long v20, v8, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/optimizemanage/b/a;->yG:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/optimizemanage/b/a;->ye:J

    move-wide/from16 v20, v0

    sub-long v20, v14, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/optimizemanage/b/a;->yD:I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/optimizemanage/b/a;->yH:Z

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/miui/optimizemanage/b/a;->yj:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/optimizemanage/b/a;->yi:J

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/optimizemanage/b/a;->yf:J

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/optimizemanage/b/a;->yg:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/miui/optimizemanage/b/a;->yh:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/miui/optimizemanage/b/a;->ye:J

    :cond_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/miui/optimizemanage/b/a;->yo:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/miui/optimizemanage/b/a;->yu:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/miui/optimizemanage/b/a;->yo:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/optimizemanage/b/a;->yn:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/miui/optimizemanage/b/a;->yt:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/miui/optimizemanage/b/a;->yn:J

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    :try_start_0
    const-string/jumbo v5, "/proc"

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/miui/optimizemanage/b/a;->yp:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/miui/optimizemanage/b/a;->yl:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/optimizemanage/b/a;->yz:Ljava/util/ArrayList;

    const/4 v6, -0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/miui/optimizemanage/b/a;->Ah(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/miui/optimizemanage/b/a;->yl:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/optimizemanage/b/a;->yy:[F

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/miui/optimizemanage/b/a;->yr:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "/proc/loadavg"

    sget-object v6, Lcom/miui/optimizemanage/b/a;->ya:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v4}, Lcom/miui/optimizemanage/b/e;->As(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    const/4 v7, 0x2

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/optimizemanage/b/a;->yv:F

    cmpl-float v7, v5, v7

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/optimizemanage/b/a;->yx:F

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_3

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iput v5, v0, Lcom/miui/optimizemanage/b/a;->yv:F

    move-object/from16 v0, p0

    iput v6, v0, Lcom/miui/optimizemanage/b/a;->yx:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/miui/optimizemanage/b/a;->yw:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v4}, Lcom/miui/optimizemanage/b/a;->Al(FFF)V

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/miui/optimizemanage/b/a;->yN:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/miui/optimizemanage/b/a;->yp:Z

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4

    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/miui/optimizemanage/b/a;->yw:F

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_2

    goto :goto_0
.end method
