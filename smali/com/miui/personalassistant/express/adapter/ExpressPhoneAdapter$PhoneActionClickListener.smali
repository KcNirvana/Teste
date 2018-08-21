.class Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$PhoneActionClickListener;
.super Ljava/lang/Object;
.source "ExpressPhoneAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneActionClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$PhoneActionClickListener;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$PhoneActionClickListener;-><init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$PhoneActionClickListener;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v3, v2}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$200(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;I)I

    move-result v0

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$PhoneActionClickListener;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-virtual {v3, v2}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/Phone;

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$PhoneActionClickListener;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v3, v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$300(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/bean/Phone;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/miui/personalassistant/express/util/ButtonUtil;->isValidClick()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$PhoneActionClickListener;->this$0:Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    invoke-static {v3, v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->access$400(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/bean/Phone;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
