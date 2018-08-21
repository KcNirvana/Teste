.class Lcom/flybird/FBSwitch$1;
.super Ljava/lang/Object;
.source "FBSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBSwitch;


# direct methods
.method constructor <init>(Lcom/flybird/FBSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBSwitch$1;->this$0:Lcom/flybird/FBSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v0, p0, Lcom/flybird/FBSwitch$1;->this$0:Lcom/flybird/FBSwitch;

    iget-wide v2, v0, Lcom/flybird/FBSwitch;->mNode:J

    const-string/jumbo v1, "onchange"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    invoke-static {v2, v3, v1, v0}, Lcom/flybird/FBView;->nativePlatformInvokeCallback(JLjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method
