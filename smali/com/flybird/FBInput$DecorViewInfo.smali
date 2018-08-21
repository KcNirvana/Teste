.class Lcom/flybird/FBInput$DecorViewInfo;
.super Ljava/lang/Object;
.source "FBInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flybird/FBInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecorViewInfo"
.end annotation


# instance fields
.field decorView:Landroid/view/View;

.field isDialog:Z

.field final synthetic this$0:Lcom/flybird/FBInput;


# direct methods
.method constructor <init>(Lcom/flybird/FBInput;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBInput$DecorViewInfo;->this$0:Lcom/flybird/FBInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
