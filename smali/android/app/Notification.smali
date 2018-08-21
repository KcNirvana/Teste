.class public abstract Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$CarExtender;,
        Landroid/app/Notification$Extender;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALL:I = -0x1


# instance fields
.field public extraNotification:Landroid/app/MiuiNotification;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/MiuiNotification;

    invoke-direct {v0}, Landroid/app/MiuiNotification;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    return-void
.end method
