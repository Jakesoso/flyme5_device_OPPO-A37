.class public Lcom/oppo/widget/OppoDatePicker;
.super Landroid/widget/FrameLayout;
.source "OppoDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoDatePicker$SavedState;,
        Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mDayText:Landroid/widget/TextView;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mMonthStr:[Ljava/lang/String;

.field private mMonthStrEn:[Ljava/lang/String;

.field private mMonthText:Landroid/widget/TextView;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

.field private mPickerPadding:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;

.field private mYearText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoDatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 166
    const v0, 0xc010406

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 170
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "MM/dd/yyyy"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 131
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoDatePicker;->mIsEnabled:Z

    .line 134
    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "01"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "02"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "03"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "04"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "05"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "06"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "07"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "08"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "09"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const-string v16, "10"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "11"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const-string v16, "12"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthStr:[Ljava/lang/String;

    .line 136
    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Jan"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "Feb"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "Mar"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "Apr"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "May"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "Jun"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "Jul"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "Aug"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "Sep"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const-string v16, "Oct"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "Nov"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const-string v16, "Dec"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthStrEn:[Ljava/lang/String;

    .line 173
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/widget/OppoDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 175
    sget-object v14, Landroid/R$styleable;->DatePicker:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 177
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v14, 0x6

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 179
    .local v12, "spinnersShown":Z
    const/4 v14, 0x7

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 181
    .local v5, "calendarViewShown":Z
    const/4 v14, 0x1

    const/16 v15, 0x76c

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 183
    .local v13, "startYear":I
    const/4 v14, 0x2

    const/16 v15, 0x834

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 185
    .local v6, "endYear":I
    const/4 v14, 0x4

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, "minDate":Ljava/lang/String;
    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "maxDate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0xc0504a4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/oppo/widget/OppoDatePicker;->mPickerPadding:I

    .line 200
    const v8, 0xc090401

    .line 202
    .local v8, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    const-string v14, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 206
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v7, v8, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 208
    new-instance v11, Lcom/oppo/widget/OppoDatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/oppo/widget/OppoDatePicker$1;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    .line 277
    .local v11, "onChangeListener":Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;
    const v14, 0xc02042e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 278
    const v14, 0xc0204da

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mYearText:Landroid/widget/TextView;

    .line 279
    const v14, 0xc0204d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthText:Landroid/widget/TextView;

    .line 280
    const v14, 0xc0204d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mDayText:Landroid/widget/TextView;

    .line 294
    const v14, 0xc020430

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    sget-object v15, Lcom/oppo/widget/OppoNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    invoke-virtual {v14, v15}, Lcom/oppo/widget/OppoNumberPicker;->setFormatter(Lcom/oppo/widget/OppoNumberPicker$Formatter;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v14, v11}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    const v15, 0xc020428

    invoke-virtual {v14, v15}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 301
    const v14, 0xc02042f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoDatePicker;->mNumberOfMonths:I

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoDatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const-wide/16 v16, 0xc8

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v14, v11}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const v15, 0xc020428

    invoke-virtual {v14, v15}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 310
    const v14, 0xc020431

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/oppo/widget/OppoNumberPicker;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v14, v11}, Lcom/oppo/widget/OppoNumberPicker;->setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const v15, 0xc020428

    invoke-virtual {v14, v15}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 317
    if-nez v12, :cond_3

    if-nez v5, :cond_3

    .line 318
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oppo/widget/OppoDatePicker;->setSpinnersShown(Z)V

    .line 325
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->clear()V

    .line 326
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/oppo/widget/OppoDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Ljava/util/Calendar;->set(III)V

    .line 333
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/oppo/widget/OppoDatePicker;->setMinDate(J)V

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->clear()V

    .line 337
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/oppo/widget/OppoDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v15, 0xb

    const/16 v16, 0x1f

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Ljava/util/Calendar;->set(III)V

    .line 344
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/oppo/widget/OppoDatePicker;->setMaxDate(J)V

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    invoke-virtual/range {v16 .. v17}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/oppo/widget/OppoDatePicker;->init(IIILcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoDatePicker;->reorderSpinners()V

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoDatePicker;->setContentDescriptions()V

    .line 358
    :cond_2
    return-void

    .line 320
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/oppo/widget/OppoDatePicker;->setSpinnersShown(Z)V

    .line 321
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/oppo/widget/OppoDatePicker;->setCalendarViewShown(Z)V

    goto/16 :goto_0

    .line 331
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1

    .line 342
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    const/16 v15, 0xb

    const/16 v16, 0x1f

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Ljava/util/Calendar;->set(III)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoDatePicker;III)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/widget/OppoDatePicker;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 565
    if-nez p1, :cond_0

    .line 566
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 571
    :goto_0
    return-object v2

    .line 568
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 569
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 570
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 692
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 805
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->sendAccessibilityEvent(I)V

    .line 806
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;->onDateChanged(Lcom/oppo/widget/OppoDatePicker;III)V

    .line 809
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    const/4 v1, 0x1

    .line 685
    :goto_0
    return v1

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 580
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 581
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 582
    .local v1, "order":[C
    array-length v2, v1

    .line 583
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 584
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 601
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 586
    :sswitch_0
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 587
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker;->mDayText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/oppo/widget/OppoDatePicker;->setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V

    .line 583
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :sswitch_1
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/oppo/widget/OppoDatePicker;->setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V

    goto :goto_1

    .line 596
    :sswitch_2
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oppo/widget/OppoDatePicker;->mYearText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 598
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-direct {p0, v3, v2, v0}, Lcom/oppo/widget/OppoDatePicker;->setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V

    goto :goto_1

    .line 606
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 608
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mPickerPadding:I

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoNumberPicker;->setNumberPickerPaddingRight(I)V

    .line 609
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mPickerPadding:I

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoNumberPicker;->setNumberPickerPaddingLeft(I)V

    .line 616
    :goto_2
    return-void

    .line 611
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mPickerPadding:I

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoNumberPicker;->setNumberPickerPaddingLeft(I)V

    .line 612
    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mPickerPadding:I

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoNumberPicker;->setNumberPickerPaddingRight(I)V

    goto :goto_2

    .line 584
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 5

    .prologue
    const v4, 0xc020427

    const v3, 0xc020426

    .line 831
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040453

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040454

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040455

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 837
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040456

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 839
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040457

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 842
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    const v2, 0xc040458

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 845
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 525
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    :cond_0
    return-void

    .line 529
    :cond_1
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 531
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/oppo/widget/OppoDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 532
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/oppo/widget/OppoDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 533
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/oppo/widget/OppoDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 534
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/oppo/widget/OppoDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 536
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/widget/OppoDatePicker;->mNumberOfMonths:I

    .line 537
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mNumberOfMonths:I

    if-ge v0, v1, :cond_0

    .line 547
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthStrEn:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 538
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthStr:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 700
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/oppo/widget/OppoNumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 820
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 821
    const/4 v0, 0x5

    .line 825
    .local v0, "imeOptions":I
    :goto_0
    const v2, 0xc020428

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 826
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 827
    return-void

    .line 823
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private updateCalendarView()V
    .locals 0

    .prologue
    .line 778
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 853
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 854
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 855
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 856
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 857
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 859
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 860
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 861
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 863
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 709
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 711
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 712
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 713
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v7}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 715
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 716
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 747
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoNumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoNumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 749
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 752
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 753
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 761
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 765
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 766
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 767
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 768
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v1

    const/16 v2, 0x1b

    if-le v1, v2, :cond_0

    .line 769
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoNumberPicker;->invalidate()V

    .line 771
    :cond_0
    return-void

    .line 717
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 720
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 721
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 722
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 723
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v7}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 724
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 725
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 726
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 727
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 728
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 729
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 730
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 731
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v7}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 733
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 734
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 736
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 737
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 738
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 739
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v7}, Lcom/oppo/widget/OppoNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoNumberPicker;->setMinValue(I)V

    .line 741
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoNumberPicker;->setMaxValue(I)V

    .line 742
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 639
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    .prologue
    .line 667
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDatePicker;->setDate(III)V

    .line 668
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners()V

    .line 669
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateCalendarView()V

    .line 670
    iput-object p4, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    .line 671
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 466
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 467
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 468
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 456
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 458
    const/16 v0, 0x14

    .line 459
    .local v0, "flags":I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 649
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoDatePicker$SavedState;

    .line 650
    .local v0, "ss":Lcom/oppo/widget/OppoDatePicker$SavedState;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 651
    # getter for: Lcom/oppo/widget/OppoDatePicker$SavedState;->mYear:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDatePicker$SavedState;->access$1100(Lcom/oppo/widget/OppoDatePicker$SavedState;)I

    move-result v1

    # getter for: Lcom/oppo/widget/OppoDatePicker$SavedState;->mMonth:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDatePicker$SavedState;->access$1200(Lcom/oppo/widget/OppoDatePicker$SavedState;)I

    move-result v2

    # getter for: Lcom/oppo/widget/OppoDatePicker$SavedState;->mDay:I
    invoke-static {v0}, Lcom/oppo/widget/OppoDatePicker$SavedState;->access$1300(Lcom/oppo/widget/OppoDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/widget/OppoDatePicker;->setDate(III)V

    .line 652
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners()V

    .line 653
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateCalendarView()V

    .line 654
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 643
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 644
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/oppo/widget/OppoDatePicker$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 499
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDaySpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearSpinner:Lcom/oppo/widget/OppoNumberPicker;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setEnabled(Z)V

    .line 440
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDatePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 416
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 417
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 428
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 423
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 425
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateCalendarView()V

    .line 427
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 381
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 382
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 388
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 390
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateCalendarView()V

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners()V

    goto :goto_0
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 516
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    return-void

    .line 516
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 626
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDatePicker;->setDate(III)V

    .line 630
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners()V

    .line 631
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->updateCalendarView()V

    .line 632
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->notifyDateChanged()V

    goto :goto_0
.end method
