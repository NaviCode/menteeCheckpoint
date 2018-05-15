document.addEventListener("DOMContentLoaded", function(){
  // Handler when the DOM is fully loaded
  // Creating more questions
  let another_question_btn = document.getElementById('add_another_question');
  another_question_btn.addEventListener('click',() => {
    append_another_question('#assessment-question-answer-pair');
  });
});

// appends question-answer pair 
const append_another_question = (selector) =>{
  let dest  = document.querySelector(selector);
  let e     = document.createElement('div');
  e.className = 'qa-pair';
  e.innerHTML = 
  `
  <div class="field">
    <label class="label">Question</label>
    <div class="control">
      <input class="input qa-question" type="text" placeholder="Text input">
    </div>
  </div>
  <div class="field">
    <label class="label">Answer</label>
    <div class="control">
      <textarea class="textarea" rows="10" class='qa-answer'></textarea>
    </div>
  </div>
  `
  dest.appendChild(e);
};
