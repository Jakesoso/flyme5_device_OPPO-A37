.class Lcom/oppo/widget/OppoDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "OppoDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oppo/widget/OppoDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 909
    new-instance v0, Lcom/oppo/widget/OppoDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 893
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mYear:I

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mMonth:I

    .line 896
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mDay:I

    .line 897
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppo/widget/OppoDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/oppo/widget/OppoDatePicker$1;

    .prologue
    .line 871
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 883
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 884
    iput p2, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mYear:I

    .line 885
    iput p3, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mMonth:I

    .line 886
    iput p4, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mDay:I

    .line 887
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/oppo/widget/OppoDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/oppo/widget/OppoDatePicker$1;

    .prologue
    .line 871
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker$SavedState;

    .prologue
    .line 871
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker$SavedState;

    .prologue
    .line 871
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker$SavedState;

    .prologue
    .line 871
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 901
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 902
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    return-void
.end method
