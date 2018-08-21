.class public Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;
.super Ljava/lang/Object;
.source "FlybirdDialogButton.java"


# instance fields
.field public action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    return-void
.end method
