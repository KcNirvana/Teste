.class final synthetic Lcom/ooyala/adtech/VASTParser$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->a:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->b:I

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->d:I

    sub-int/2addr v2, v0

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->e:I

    sub-int/2addr v2, v0

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->l:I

    sub-int/2addr v2, v0

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->p:I

    sub-int/2addr v2, v0

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->q:I

    sub-int/2addr v2, v0

    const/4 v3, 0x7

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->A:I

    sub-int/2addr v2, v0

    const/16 v3, 0x8

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->B:I

    sub-int/2addr v2, v0

    const/16 v3, 0x9

    aput v3, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->u:I

    sub-int/2addr v2, v0

    const/16 v3, 0xa

    aput v3, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->C:I

    sub-int/2addr v2, v0

    const/16 v3, 0xb

    aput v3, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->E:I

    sub-int/2addr v2, v0

    const/16 v3, 0xc

    aput v3, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->G:I

    sub-int/2addr v2, v0

    const/16 v3, 0xd

    aput v3, v1, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->J:I

    sub-int/2addr v2, v0

    const/16 v3, 0xe

    aput v3, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->c:I

    sub-int/2addr v2, v0

    const/16 v3, 0xf

    aput v3, v1, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->w:I

    sub-int/2addr v2, v0

    const/16 v3, 0x10

    aput v3, v1, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->f:I

    sub-int/2addr v2, v0

    const/16 v3, 0x11

    aput v3, v1, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->g:I

    sub-int/2addr v2, v0

    const/16 v3, 0x12

    aput v3, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->x:I

    sub-int/2addr v2, v0

    const/16 v3, 0x13

    aput v3, v1, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->y:I

    sub-int/2addr v2, v0

    const/16 v3, 0x14

    aput v3, v1, v2
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->t:I

    sub-int/2addr v2, v0

    const/16 v3, 0x15

    aput v3, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->z:I

    sub-int/2addr v2, v0

    const/16 v3, 0x16

    aput v3, v1, v2
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->D:I

    sub-int/2addr v2, v0

    const/16 v3, 0x17

    aput v3, v1, v2
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->h:I

    sub-int/2addr v2, v0

    const/16 v3, 0x18

    aput v3, v1, v2
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->i:I

    sub-int/2addr v2, v0

    const/16 v3, 0x19

    aput v3, v1, v2
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->j:I

    sub-int/2addr v2, v0

    const/16 v3, 0x1a

    aput v3, v1, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->k:I

    sub-int/2addr v2, v0

    const/16 v3, 0x1b

    aput v3, v1, v2
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->F:I

    sub-int/2addr v2, v0

    const/16 v3, 0x1c

    aput v3, v1, v2
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->H:I

    sub-int/2addr v2, v0

    const/16 v3, 0x1d

    aput v3, v1, v2
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->m:I

    sub-int/2addr v2, v0

    const/16 v3, 0x1e

    aput v3, v1, v2
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->n:I

    sub-int/2addr v2, v0

    const/16 v3, 0x1f

    aput v3, v1, v2
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->o:I

    sub-int/2addr v2, v0

    const/16 v3, 0x20

    aput v3, v1, v2
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->v:I

    sub-int/2addr v2, v0

    const/16 v3, 0x21

    aput v3, v1, v2
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->I:I

    sub-int/2addr v2, v0

    const/16 v3, 0x22

    aput v3, v1, v2
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->K:I

    sub-int/2addr v2, v0

    const/16 v3, 0x23

    aput v3, v1, v2
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->r:I

    sub-int/2addr v2, v0

    const/16 v3, 0x24

    aput v3, v1, v2
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v1, Lcom/ooyala/adtech/VASTParser$1;->a:[I

    sget v2, Lcom/ooyala/adtech/VASTParser$VASTHandler$a;->s:I

    sub-int/2addr v2, v0

    const/16 v0, 0x25

    aput v0, v1, v2
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method
