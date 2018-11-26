.class final Lcom/miui/applicationlock/b/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aeg:J

.field final synthetic aeh:J


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/applicationlock/b/j;->aeg:J

    iput-wide p3, p0, Lcom/miui/applicationlock/b/j;->aeh:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    const-wide v10, 0x3fc999999999999aL    # 0.2

    const-wide v8, 0x3fc3333333333333L    # 0.15

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const-wide v4, 0x3fa999999999999aL    # 0.05

    iget-wide v0, p0, Lcom/miui/applicationlock/b/j;->aeg:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/applicationlock/b/j;->aeh:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/miui/applicationlock/b/j;->aeg:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/miui/applicationlock/b/j;->aeh:J

    long-to-float v1, v2

    div-float v1, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    float-to-double v2, v1

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    const v0, 0x3d4ccccd    # 0.05f

    :cond_2
    :goto_0
    const-string/jumbo v1, "AnalyticHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "watched percent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v2, "video_watched_percent"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "applock_video_watched"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/b/a;->ajY(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_3
    float-to-double v2, v1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    float-to-double v2, v1

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_4

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_4
    float-to-double v2, v1

    cmpl-double v2, v2, v6

    if-lez v2, :cond_5

    float-to-double v2, v1

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_5

    const v0, 0x3e19999a    # 0.15f

    goto :goto_0

    :cond_5
    float-to-double v2, v1

    cmpl-double v2, v2, v8

    if-lez v2, :cond_6

    float-to-double v2, v1

    cmpg-double v2, v2, v10

    if-gtz v2, :cond_6

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_6
    float-to-double v2, v1

    cmpl-double v2, v2, v10

    if-lez v2, :cond_7

    float-to-double v2, v1

    cmpg-double v2, v2, v12

    if-gtz v2, :cond_7

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_7
    float-to-double v2, v1

    cmpl-double v2, v2, v12

    if-lez v2, :cond_8

    float-to-double v2, v1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_8

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_8
    float-to-double v2, v1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpl-double v2, v2, v4

    if-lez v2, :cond_9

    float-to-double v2, v1

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_9

    const v0, 0x3eb33333    # 0.35f

    goto/16 :goto_0

    :cond_9
    float-to-double v2, v1

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpl-double v2, v2, v4

    if-lez v2, :cond_a

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_a

    const v0, 0x3ecccccd    # 0.4f

    goto/16 :goto_0

    :cond_a
    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_b

    float-to-double v2, v1

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_b

    const v0, 0x3ee66666    # 0.45f

    goto/16 :goto_0

    :cond_b
    float-to-double v2, v1

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpl-double v2, v2, v4

    if-lez v2, :cond_c

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_c

    const/high16 v0, 0x3f000000    # 0.5f

    goto/16 :goto_0

    :cond_c
    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_d

    float-to-double v2, v1

    const-wide v4, 0x3fe199999999999aL    # 0.55

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_d

    const v0, 0x3f0ccccd    # 0.55f

    goto/16 :goto_0

    :cond_d
    float-to-double v2, v1

    const-wide v4, 0x3fe199999999999aL    # 0.55

    cmpl-double v2, v2, v4

    if-lez v2, :cond_e

    float-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_e

    const v0, 0x3f19999a    # 0.6f

    goto/16 :goto_0

    :cond_e
    float-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_f

    float-to-double v2, v1

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_f

    const v0, 0x3f266666    # 0.65f

    goto/16 :goto_0

    :cond_f
    float-to-double v2, v1

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10

    float-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_10

    const v0, 0x3f333333    # 0.7f

    goto/16 :goto_0

    :cond_10
    float-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v2, v4

    if-lez v2, :cond_11

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_11

    const/high16 v0, 0x3f400000    # 0.75f

    goto/16 :goto_0

    :cond_11
    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v2, v2, v4

    if-lez v2, :cond_12

    float-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_12

    const v0, 0x3f4ccccd    # 0.8f

    goto/16 :goto_0

    :cond_12
    float-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_13

    float-to-double v2, v1

    const-wide v4, 0x3feb333333333333L    # 0.85

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_13

    const v0, 0x3f59999a    # 0.85f

    goto/16 :goto_0

    :cond_13
    float-to-double v2, v1

    const-wide v4, 0x3feb333333333333L    # 0.85

    cmpl-double v2, v2, v4

    if-lez v2, :cond_14

    float-to-double v2, v1

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_14

    const v0, 0x3f666666    # 0.9f

    goto/16 :goto_0

    :cond_14
    float-to-double v2, v1

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    float-to-double v2, v1

    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2

    const v0, 0x3f733333    # 0.95f

    goto/16 :goto_0
.end method
