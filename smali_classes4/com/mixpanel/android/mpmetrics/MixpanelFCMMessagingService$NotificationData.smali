.class public Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;
.super Ljava/lang/Object;
.source "MixpanelFCMMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NotificationData"
.end annotation


# static fields
.field public static final NOT_SET:I = -0x1


# instance fields
.field public final color:I

.field public final icon:I

.field public final intent:Landroid/content/Intent;

.field public final largeIcon:I

.field public final message:Ljava/lang/String;

.field public final title:Ljava/lang/CharSequence;

.field public final whiteIcon:I


# direct methods
.method private constructor <init>(IIILjava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->icon:I

    iput p2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->largeIcon:I

    iput p3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->whiteIcon:I

    iput-object p4, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->title:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->message:Ljava/lang/String;

    iput-object p6, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->intent:Landroid/content/Intent;

    iput p7, p0, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;->color:I

    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;ILcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/mixpanel/android/mpmetrics/MixpanelFCMMessagingService$NotificationData;-><init>(IIILjava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method
