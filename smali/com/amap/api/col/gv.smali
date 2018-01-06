.class public Lcom/amap/api/col/gv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static p:Lcom/amap/api/col/gv;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:S

.field public m:J

.field public n:Z

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/gv;->p:Lcom/amap/api/col/gv;

    return-void
.end method

.method protected constructor <init>(IZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/amap/api/col/gv;->a:I

    iput v2, p0, Lcom/amap/api/col/gv;->b:I

    iput v2, p0, Lcom/amap/api/col/gv;->c:I

    iput v2, p0, Lcom/amap/api/col/gv;->d:I

    iput v2, p0, Lcom/amap/api/col/gv;->e:I

    iput v2, p0, Lcom/amap/api/col/gv;->f:I

    iput v2, p0, Lcom/amap/api/col/gv;->g:I

    iput v2, p0, Lcom/amap/api/col/gv;->h:I

    iput v2, p0, Lcom/amap/api/col/gv;->i:I

    const/16 v0, -0x71

    iput v0, p0, Lcom/amap/api/col/gv;->j:I

    iput v2, p0, Lcom/amap/api/col/gv;->k:I

    iput-short v2, p0, Lcom/amap/api/col/gv;->l:S

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/gv;->m:J

    iput-boolean v2, p0, Lcom/amap/api/col/gv;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/gv;->o:Z

    iput p1, p0, Lcom/amap/api/col/gv;->k:I

    iput-boolean p2, p0, Lcom/amap/api/col/gv;->n:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/gv;->c:I

    return v0
.end method

.method public a(Lcom/amap/api/col/gv;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p1, Lcom/amap/api/col/gv;->k:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/amap/api/col/gv;->k:I

    if-ne v2, v1, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->c:I

    iget v3, p0, Lcom/amap/api/col/gv;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->d:I

    iget v3, p0, Lcom/amap/api/col/gv;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->b:I

    iget v3, p0, Lcom/amap/api/col/gv;->b:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/amap/api/col/gv;->k:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->i:I

    iget v3, p0, Lcom/amap/api/col/gv;->i:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->h:I

    iget v3, p0, Lcom/amap/api/col/gv;->h:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->g:I

    iget v3, p0, Lcom/amap/api/col/gv;->g:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/amap/api/col/gv;->k:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->c:I

    iget v3, p0, Lcom/amap/api/col/gv;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->d:I

    iget v3, p0, Lcom/amap/api/col/gv;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->b:I

    iget v3, p0, Lcom/amap/api/col/gv;->b:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/amap/api/col/gv;->k:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->c:I

    iget v3, p0, Lcom/amap/api/col/gv;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->d:I

    iget v3, p0, Lcom/amap/api/col/gv;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/amap/api/col/gv;->b:I

    iget v3, p0, Lcom/amap/api/col/gv;->b:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/gv;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/gv;->h:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/gv;->i:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/gv;->j:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "unknown"

    iget v1, p0, Lcom/amap/api/col/gv;->k:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "CDMA bid=%d, nid=%d, sid=%d, valid=%b, sig=%d, age=%d, reg=%b"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/amap/api/col/gv;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/amap/api/col/gv;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/amap/api/col/gv;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/amap/api/col/gv;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p0, Lcom/amap/api/col/gv;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-short v4, p0, Lcom/amap/api/col/gv;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/amap/api/col/gv;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "GSM lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/amap/api/col/gv;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/amap/api/col/gv;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/amap/api/col/gv;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/amap/api/col/gv;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p0, Lcom/amap/api/col/gv;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-short v4, p0, Lcom/amap/api/col/gv;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/amap/api/col/gv;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "LTE lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/amap/api/col/gv;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/amap/api/col/gv;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/amap/api/col/gv;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/amap/api/col/gv;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p0, Lcom/amap/api/col/gv;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-short v4, p0, Lcom/amap/api/col/gv;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/amap/api/col/gv;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "WCDMA lac=%d, cid=%d, mnc=%s, valid=%b, sig=%d, age=%d, reg=%b"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/amap/api/col/gv;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/amap/api/col/gv;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/amap/api/col/gv;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/amap/api/col/gv;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p0, Lcom/amap/api/col/gv;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-short v4, p0, Lcom/amap/api/col/gv;->l:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/amap/api/col/gv;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
