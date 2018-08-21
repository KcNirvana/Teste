.class public Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;
.super Ljava/lang/Object;
.source "FlybirdActionType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventType"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field public mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field private params:[Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mType:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    return-void
.end method


# virtual methods
.method public getParams()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->params:[Ljava/lang/String;

    return-object v0
.end method

.method public getmAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public setParams([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->params:[Ljava/lang/String;

    return-void
.end method
