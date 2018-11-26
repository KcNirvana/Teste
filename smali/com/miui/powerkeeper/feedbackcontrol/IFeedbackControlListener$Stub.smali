.class public abstract Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-virtual {p0, p0, v0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/powerkeeper/feedbackcontrol/a;

    invoke-direct {v0, p0}, Lcom/miui/powerkeeper/feedbackcontrol/a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener$Stub;->buh()V

    return v1

    :sswitch_2
    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener$Stub;->bui()V

    return v1

    :sswitch_3
    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener$Stub;->bun()V

    return v1

    :sswitch_4
    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener$Stub;->buo()V

    return v1

    :sswitch_5
    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener$Stub;->bul()V

    return v1

    :sswitch_6
    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener$Stub;->bum()V

    return v1

    :sswitch_7
    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener$Stub;->buj()V

    return v1

    :sswitch_8
    const-string/jumbo v0, "com.miui.powerkeeper.feedbackcontrol.IFeedbackControlListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControlListener$Stub;->buk()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
