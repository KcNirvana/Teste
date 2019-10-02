.class final Lcom/ooyala/pulse/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/c;


# instance fields
.field a:Lcom/ooyala/pulse/Pulse;

.field b:Lcom/ooyala/adtech/Condition$Type;

.field c:Lcom/ooyala/adtech/Session;

.field d:Ljava/lang/String;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ooyala/adtech/Condition$Type;",
            "Ljava/util/ArrayList<",
            "Lcom/ooyala/adtech/InsertionPoint;",
            ">;>;"
        }
    .end annotation
.end field

.field f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ooyala/adtech/InsertionPoint;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/ooyala/pulse/PauseInsertionPoint;

.field h:I


# direct methods
.method protected constructor <init>(Lcom/ooyala/pulse/Pulse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ooyala/pulse/e;->h:I

    iput-object p1, p0, Lcom/ooyala/pulse/e;->a:Lcom/ooyala/pulse/Pulse;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/e;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/e;->f:Ljava/util/Set;

    return-void
.end method

.method private a(Lcom/ooyala/adtech/InsertionPoint;)I
    .locals 3

    invoke-virtual {p1}, Lcom/ooyala/adtech/InsertionPoint;->getSlots()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ooyala/adtech/Slot;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Slot;->getAds()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/adtech/Ad;

    invoke-virtual {v1}, Lcom/ooyala/adtech/Ad;->getType()Lcom/ooyala/adtech/Ad$Type;

    move-result-object v1

    sget-object v2, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/ooyala/pulse/e;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ooyala/pulse/e;->h:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/ooyala/pulse/e;->h:I

    return p1
.end method

.method private a(Lcom/ooyala/adtech/Condition$Type;Lcom/ooyala/pulse/f;)Lcom/ooyala/adtech/InsertionPoint;
    .locals 3

    iget-object v0, p0, Lcom/ooyala/pulse/e;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ooyala/pulse/e;->b:Lcom/ooyala/adtech/Condition$Type;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/adtech/InsertionPoint;

    invoke-virtual {v1}, Lcom/ooyala/adtech/InsertionPoint;->getConditions()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/ooyala/pulse/e;->a(Ljava/util/List;Lcom/ooyala/pulse/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/List;Lcom/ooyala/pulse/f;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/Condition;",
            ">;",
            "Lcom/ooyala/pulse/f;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/Condition;

    sget-object v3, Lcom/ooyala/pulse/e$1;->a:[I

    invoke-virtual {v0}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ooyala/adtech/Condition$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    instance-of v3, v0, Lcom/ooyala/adtech/PropertyCondition;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v3

    sget-object v4, Lcom/ooyala/pulse/f$1;->a:[I

    invoke-virtual {v3}, Lcom/ooyala/adtech/Condition$Type;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    const-wide/16 v3, 0x0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-wide v5, p2, Lcom/ooyala/pulse/f;->a:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    goto :goto_0

    :pswitch_2
    iget v3, p2, Lcom/ooyala/pulse/f;->c:F

    float-to-long v3, v3

    goto :goto_0

    :pswitch_3
    iget v3, p2, Lcom/ooyala/pulse/f;->b:F

    float-to-long v3, v3

    :goto_0
    move-object v5, v0

    check-cast v5, Lcom/ooyala/adtech/PropertyCondition;

    sget-object v6, Lcom/ooyala/pulse/e$1;->b:[I

    invoke-virtual {v5}, Lcom/ooyala/adtech/PropertyCondition;->getOperator()Lcom/ooyala/adtech/PropertyCondition$Operator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ooyala/adtech/PropertyCondition$Operator;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const v7, 0x3e99999a    # 0.3f

    packed-switch v6, :pswitch_data_2

    goto :goto_2

    :pswitch_4
    long-to-float v3, v3

    invoke-virtual {v5}, Lcom/ooyala/adtech/PropertyCondition;->getValue()F

    move-result v4

    sub-float/2addr v4, v7

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    :goto_1
    const/4 v3, 0x1

    goto :goto_3

    :pswitch_5
    long-to-float v3, v3

    invoke-virtual {v5}, Lcom/ooyala/adtech/PropertyCondition;->getValue()F

    move-result v4

    add-float/2addr v4, v7

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    invoke-virtual {v5}, Lcom/ooyala/adtech/PropertyCondition;->getValue()F

    move-result v4

    sub-float/2addr v4, v7

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    goto :goto_1

    :pswitch_6
    iget-object v3, p0, Lcom/ooyala/pulse/e;->b:Lcom/ooyala/adtech/Condition$Type;

    invoke-virtual {v0}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v4

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/ooyala/adtech/Condition;->getConditions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ooyala/pulse/e;->a(Ljava/util/List;Lcom/ooyala/pulse/f;)Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_0

    return v1

    :cond_3
    return v2

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private b(Lcom/ooyala/adtech/InsertionPoint;)Lcom/ooyala/pulse/a;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ooyala/pulse/a;

    iget-object v1, p0, Lcom/ooyala/pulse/e;->a:Lcom/ooyala/pulse/Pulse;

    invoke-direct {v0, v1, p1}, Lcom/ooyala/pulse/a;-><init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/InsertionPoint;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final a()Lcom/ooyala/pulse/PauseInsertionPoint;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/e;->g:Lcom/ooyala/pulse/PauseInsertionPoint;

    return-object v0
.end method

.method public final a(Lcom/ooyala/pulse/f;)Lcom/ooyala/pulse/a;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/Condition$Type;->ON_BEFORE_CONTENT:Lcom/ooyala/adtech/Condition$Type;

    invoke-direct {p0, v0, p1}, Lcom/ooyala/pulse/e;->a(Lcom/ooyala/adtech/Condition$Type;Lcom/ooyala/pulse/f;)Lcom/ooyala/adtech/InsertionPoint;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ooyala/pulse/e;->b(Lcom/ooyala/adtech/InsertionPoint;)Lcom/ooyala/pulse/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/ooyala/adtech/Session;)V
    .locals 5

    iput-object p1, p0, Lcom/ooyala/pulse/e;->c:Lcom/ooyala/adtech/Session;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Session;->getInsertionPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/InsertionPoint;

    iget-object v1, p0, Lcom/ooyala/pulse/e;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/ooyala/adtech/InsertionPoint;->getConditions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/ooyala/adtech/InsertionPoint;->getConditions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/adtech/Condition;

    invoke-virtual {v1}, Lcom/ooyala/adtech/Condition;->getType()Lcom/ooyala/adtech/Condition$Type;

    move-result-object v1

    sget-object v3, Lcom/ooyala/pulse/e$1;->a:[I

    invoke-virtual {v1}, Lcom/ooyala/adtech/Condition$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v1}, Lcom/ooyala/adtech/Condition$Type;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ooyala/adtech/Condition$Type;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "overlay"

    goto :goto_1

    :pswitch_1
    const-string v3, "pause"

    goto :goto_1

    :pswitch_2
    const-string v3, "postroll"

    goto :goto_1

    :pswitch_3
    const-string v3, "preroll"

    :goto_1
    iput-object v3, p0, Lcom/ooyala/pulse/e;->d:Ljava/lang/String;

    sget-object v3, Lcom/ooyala/adtech/Condition$Type;->ON_PAUSE:Lcom/ooyala/adtech/Condition$Type;

    invoke-virtual {v1, v3}, Lcom/ooyala/adtech/Condition$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/ooyala/pulse/PauseInsertionPoint;

    iget-object v4, p0, Lcom/ooyala/pulse/e;->a:Lcom/ooyala/pulse/Pulse;

    invoke-direct {v3, v4, v0}, Lcom/ooyala/pulse/PauseInsertionPoint;-><init>(Lcom/ooyala/pulse/Pulse;Lcom/ooyala/adtech/InsertionPoint;)V

    iput-object v3, p0, Lcom/ooyala/pulse/e;->g:Lcom/ooyala/pulse/PauseInsertionPoint;

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/ooyala/pulse/e;->e:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ooyala/pulse/e;->e:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lcom/ooyala/pulse/e;->e:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ooyala/pulse/e;->e:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/ooyala/pulse/e;->f:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-direct {p0, v0}, Lcom/ooyala/pulse/e;->a(Lcom/ooyala/adtech/InsertionPoint;)I

    move-result v3

    iput v3, p0, Lcom/ooyala/pulse/e;->h:I

    sget-object v3, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_POSITION:Lcom/ooyala/adtech/Condition$Type;

    invoke-virtual {v1, v3}, Lcom/ooyala/adtech/Condition$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/ooyala/adtech/InsertionPoint;->getConditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/PropertyCondition;

    iget v1, p0, Lcom/ooyala/pulse/e;->h:I

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extending session with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ooyala/pulse/e;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "midroll/overlay ads at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ooyala/adtech/PropertyCondition;->getValue()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x73

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t extend session with midroll/overlay ads at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ooyala/adtech/PropertyCondition;->getValue()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "s; no ads returned"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/ooyala/pulse/e;->h:I

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extending session with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ooyala/pulse/e;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ooyala/pulse/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t extend session with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ooyala/pulse/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ads; no ads returned"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/ooyala/pulse/f;)Lcom/ooyala/pulse/a;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/Condition$Type;->PLAYBACK_POSITION:Lcom/ooyala/adtech/Condition$Type;

    invoke-direct {p0, v0, p1}, Lcom/ooyala/pulse/e;->a(Lcom/ooyala/adtech/Condition$Type;Lcom/ooyala/pulse/f;)Lcom/ooyala/adtech/InsertionPoint;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ooyala/pulse/e;->b(Lcom/ooyala/adtech/InsertionPoint;)Lcom/ooyala/pulse/a;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/ooyala/pulse/f;)Lcom/ooyala/pulse/a;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/Condition$Type;->ON_CONTENT_END:Lcom/ooyala/adtech/Condition$Type;

    invoke-direct {p0, v0, p1}, Lcom/ooyala/pulse/e;->a(Lcom/ooyala/adtech/Condition$Type;Lcom/ooyala/pulse/f;)Lcom/ooyala/adtech/InsertionPoint;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ooyala/pulse/e;->b(Lcom/ooyala/adtech/InsertionPoint;)Lcom/ooyala/pulse/a;

    move-result-object p1

    return-object p1
.end method
