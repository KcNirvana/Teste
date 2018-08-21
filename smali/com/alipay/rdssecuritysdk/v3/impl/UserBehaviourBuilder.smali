.class public Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;
.super Ljava/lang/Object;
.source "UserBehaviourBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;,
        Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/alipay/android/phone/inside/log/api/c/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->b:I

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->f:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->d:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->f:J

    return-void
.end method

.method private a(Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;
    .locals 4

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->a:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->a:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iget-object v1, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->pn:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iget-object v1, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->cn:Ljava/lang/String;

    invoke-static {v1, p3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;

    invoke-direct {v0, p0}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;-><init>(Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;)V

    iput-object p1, v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->a:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iget-object v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->seq:Ljava/lang/String;

    iget-object v1, v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a()Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;
    .locals 1

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;-><init>()V

    return-object v0
.end method

.method private a(Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDD)V
    .locals 9

    invoke-static {p2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "-"

    :goto_0
    invoke-static {p3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "-"

    :goto_1
    iget-object v4, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->c:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v5, "APSecuritySdk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNewActionByActionType: type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->uaEventTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", pageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", ctrlName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", optionalPr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", optionalKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", hasFocus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p7

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p9

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;

    invoke-direct {v4}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->t:Ljava/lang/String;

    sget-object v5, Lcom/alipay/rdssecuritysdk/v3/impl/b;->a:[I

    invoke-virtual {p1}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_2
    return-void

    :cond_0
    move-object v2, p2

    goto/16 :goto_0

    :cond_1
    move-object v3, p3

    goto/16 :goto_1

    :pswitch_0
    iput-object p4, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->pr:Ljava/lang/String;

    :goto_3
    :pswitch_1
    invoke-direct {p0, p1, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a(Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;

    move-result-object v5

    iget-object v6, v5, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iget-object v6, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->ad:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x14

    if-ne v6, v7, :cond_2

    iget-object v6, v5, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iget-object v6, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->ad:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v6, v5, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    invoke-direct {p0, p2, p3}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->type:Ljava/lang/String;

    iget-object v6, v5, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iget-object v7, p1, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->uaEventTag:Ljava/lang/String;

    iput-object v7, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->et:Ljava/lang/String;

    iget-object v6, v5, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iput-object v2, v6, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->pn:Ljava/lang/String;

    iget-object v2, v5, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->cn:Ljava/lang/String;

    iget-object v2, v5, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iget-object v2, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->ad:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, v5, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iget-object v3, v5, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    iget-object v3, v3, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->ad:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;->num:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    iput-object p5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->key:Ljava/lang/String;

    goto :goto_3

    :pswitch_3
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->x:Ljava/lang/String;

    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->y:Ljava/lang/String;

    goto :goto_3

    :pswitch_4
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$AD;->f:Ljava/lang/Boolean;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "2"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    sget-object v2, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_CLICK:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-wide v10, v8

    invoke-direct/range {v1 .. v11}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a(Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDD)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 13

    sget-object v2, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_SCREEN_TOUCH:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v11}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a(Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDD)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-wide/16 v8, 0x0

    sget-object v2, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_EDITTEXT_INPUT:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-wide v10, v8

    invoke-direct/range {v1 .. v11}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a(Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDD)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    sget-object v2, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_FOUCS_CHANGES:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move v7, p3

    move-wide v10, v8

    invoke-direct/range {v1 .. v11}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a(Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDD)V

    return-void
.end method

.method public b()Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;
    .locals 4

    new-instance v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;

    invoke-direct {v1}, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->action:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;

    iget-object v3, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->action:Ljava/util/List;

    iget-object v0, v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$a;->b:Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Action;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->num:Ljava/lang/String;

    iget-wide v2, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/rdssecuritysdk/v3/RdsRequestMessage$Sdk$Usr$Ua;->t:Ljava/lang/String;

    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    sget-object v2, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_PAGE_ENTER:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v4

    move-wide v10, v8

    invoke-direct/range {v1 .. v11}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;->a(Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDD)V

    return-void
.end method
