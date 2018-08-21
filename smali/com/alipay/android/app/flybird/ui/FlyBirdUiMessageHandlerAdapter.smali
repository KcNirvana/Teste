.class public Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;
.super Ljava/lang/Object;
.source "FlyBirdUiMessageHandlerAdapter.java"

# interfaces
.implements Lcom/alipay/android/app/b/a/d;


# static fields
.field private static mPayProgressListener:Lcom/alipay/android/app/flybird/ui/FlyBirdPayProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;->mPayProgressListener:Lcom/alipay/android/app/flybird/ui/FlyBirdPayProgressListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPayProgressListener()Lcom/alipay/android/app/flybird/ui/FlyBirdPayProgressListener;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;->mPayProgressListener:Lcom/alipay/android/app/flybird/ui/FlyBirdPayProgressListener;

    return-object v0
.end method

.method public static setPayProgressListener(Lcom/alipay/android/app/flybird/ui/FlyBirdPayProgressListener;)V
    .locals 0

    sput-object p0, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;->mPayProgressListener:Lcom/alipay/android/app/flybird/ui/FlyBirdPayProgressListener;

    return-void
.end method

.method private updateResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/b/d/a;)V
    .locals 5

    const/4 v4, 0x4

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "FlyBirdUiMessageHandlerAdapter.updateResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p4}, Lcom/alipay/android/app/b/d/a;->h()Lcom/alipay/android/app/b/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "FlybirdUiMessageHandlerAdapter::updateResult"

    const-string/jumbo v1, "pay result is already success, don\'t set."

    invoke-static {v4, v0, v1}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "payresult"

    const-string/jumbo v1, "PayResultAlreadySuccess"

    invoke-virtual {p4}, Lcom/alipay/android/app/b/d/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/d/c/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/b/b/a;->a(Ljava/lang/String;)V

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/b/b/a;->c(Ljava/lang/String;)V

    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/b/b/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/alipay/android/app/b/a/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v5, -0x1

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "FlyBirdUiMessageHandlerAdapter.execute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "exe msg,detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/app/b/a/j;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    iget v0, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v2

    iget v0, p1, Lcom/alipay/android/app/b/a/j;->c:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->hasWindowManager(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iget v3, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-direct {v2, v3, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;-><init>(ILjava/lang/String;)V

    iget v0, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->addWindowManager(ILcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    :cond_1
    iget v0, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/c/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xb

    iput v0, p1, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v0, 0x7d1

    iput v0, p1, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdFirstWindowFrame;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFirstWindowFrame;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameFactory;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameFactory;-><init>()V

    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameFactory;->convertFrameData(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "FlyBirdUiMessageHandlerAdapter.execute"

    const-string/jumbo v2, "frame == null"

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "FlyBirdUiMessageHandlerAdapter.execute"

    const-string/jumbo v2, "manager == null"

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isNoBack()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/alipay/android/app/b/b;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->clearDataStack()V

    :cond_5
    iget v1, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->setmBizId(I)V

    invoke-virtual {v2}, Lcom/alipay/android/app/b/b;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->pushFrame(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v1

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getEndCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getMemo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;->updateResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/b/d/a;)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/sys/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getKeyboardStatus()I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getKeyboardStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/d/a;->a(I)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameFactory;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameFactory;-><init>()V

    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameFactory;->convertFrameData(Ljava/util/Map;)Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "FlyBirdUiMessageHandlerAdapter.execute"

    const-string/jumbo v2, "frame == null"

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "QUICKPAY@afterpay-guide-flex"

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "InsideBindCard"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5, v1, v3}, Lcom/alipay/android/app/statistic/a/a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_7
    if-nez v2, :cond_8

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "FlyBirdUiMessageHandlerAdapter.execute"

    const-string/jumbo v2, "manager == null"

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isNoBack()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/alipay/android/app/b/b;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->clearDataStack()V

    :cond_9
    iget v1, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->setmBizId(I)V

    invoke-virtual {v2}, Lcom/alipay/android/app/b/b;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->pushFrame(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v1

    iget v2, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getEndCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getMemo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdUiMessageHandlerAdapter;->updateResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/b/d/a;)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/sys/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getKeyboardStatus()I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getKeyboardStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/d/a;->a(I)V

    goto/16 :goto_0

    :sswitch_3
    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iget v1, p1, Lcom/alipay/android/app/b/a/j;->c:I

    const/16 v3, 0x7d7

    if-ne v1, v3, :cond_c

    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_a
    :goto_1
    const-string/jumbo v1, "InsideBindCard"

    invoke-static {v5, v1}, Lcom/alipay/android/app/statistic/a/a;->c(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v3, "InsideBindCardSuccess"

    invoke-static {v5, v3}, Lcom/alipay/android/app/statistic/a/a;->c(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v1

    const-string/jumbo v4, "auth"

    sget-object v5, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v6, "InsideBindCard"

    invoke-interface {v1, v4, v5, v6}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v1

    const-string/jumbo v3, "auth"

    sget-object v4, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v5, "InsideBindCardSuccess"

    invoke-interface {v1, v3, v4, v5}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    iget v3, p1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->removeWindowManager(I)V

    iget v1, p1, Lcom/alipay/android/app/b/a/j;->a:I

    iget v3, p1, Lcom/alipay/android/app/b/a/j;->c:I

    const/16 v4, 0xc

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/alipay/android/app/b/b;->dispose(IILjava/lang/Object;I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v2}, Lcom/alipay/android/app/b/b;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->peekFrame()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->formatResult()Ljava/lang/String;

    move-result-object v0

    :cond_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/a;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alipay/android/app/pay/ResultStatus;->CANCELED:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v3}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getCallResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_4
    iget-object v0, p1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/b/b;->onException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3f6 -> :sswitch_4
        0x7d0 -> :sswitch_0
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_3
        0x7d7 -> :sswitch_3
        0x7d8 -> :sswitch_4
        0x7d9 -> :sswitch_2
    .end sparse-switch
.end method
